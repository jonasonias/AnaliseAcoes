const express = require('express');
const cors = require('cors');
const bcrypt = require('bcryptjs');
const User = require('./models/User');
const Acoes = require('./models/Acoes');
const { v4: uuidv4 } = require('uuid');
const serveFavicon = require('serve-favicon');

const app = express();

app.use(cors({ origin: true, credentials: true }));
app.use(express.json());

const sessions = {};

app.use((req, res, next) => {
    const sessionId = req.header('X-Session-Id');
    if (sessionId && sessions[sessionId]) {
        req.session = sessions[sessionId];
    } else {
        req.session = null;
    }
    next();
});

app.use((req, res, next) => {
    if (req.session) {
        req.session.touch();
    }
    next();
});

app.use(serveFavicon('C:\\Users\\jonas\\Documents\\stocksSiteAWS\\Backend\\public\\favicon.ico'));

app.get('/', (req, res) => {
    res.send('Servidor Express está funcionando!');
});

app.post('/soma', (req, res) => {
    const { num1, num2 } = req.body;

    if (!num1 || !num2) {
        return res.status(400).send('Por favor, forneça ambos os números');
    }

    const numero1 = parseFloat(num1);
    const numero2 = parseFloat(num2);

    if (isNaN(numero1) || isNaN(numero2)) {
        return res.status(400).send('Os números fornecidos não são válidos');
    }

    const resultado = numero1 + numero2;
    res.json({ resultado });
});

app.post('/register', async (req, res) => {
    const { name, email, password } = req.body;
    try {
        const userExists = await User.findOne(email);
        if (userExists) {
            return res.status(400).send('Email já está registrado');
        }

        const newUser = await User.create(name, email, password);
        res.status(201).send('Usuário registrado com sucesso');
    } catch (err) {
        res.status(500).send('Erro ao registrar usuário');
    }
});

app.post('/login', async (req, res) => {
    const { email, password } = req.body;
    try {
        const user = await User.findOne(email);
        if (!user) {
            return res.status(400).send('Credenciais inválidas');
        }

        const isMatch = await bcrypt.compare(password, user.password);
        if (!isMatch) {
            return res.status(400).send('Credenciais inválidas');
        }

        const sessionId = uuidv4();
        sessions[sessionId] = { userId: user.id, createdAt: new Date(), touch() {
            this.createdAt = new Date();
        } };

        res.json({ message: 'Login bem-sucedido', sessionId });
    } catch (err) {
        res.status(500).send('Erro ao fazer login');
    }
});

async function verificarSessao(req, res, next) {
    if (!req.session) {
        return res.status(401).send('Não autenticado');
    }
    next();
}

app.get('/user-info', verificarSessao, async (req, res) => {
    try {
        const user = await User.findById(req.session.userId);
        if (!user) {
            return res.status(404).send('Usuário não encontrado');
        }
        res.json({
            id: user.id,
            name: user.name,
            email: user.email
        });
    } catch (err) {
        res.status(500).send('Erro ao recuperar informações do usuário');
    }
});

app.post('/logout', verificarSessao, (req, res) => {
    const sessionId = req.header('X-Session-Id');
    delete sessions[sessionId];
    res.send('Logout bem-sucedido');
});

app.delete('/delete-user', verificarSessao, async (req, res) => {
    const userId = req.session.userId;
    try {
        await User.delete(userId);
        delete sessions[req.header('X-Session-Id')];
        res.send('Usuário excluído com sucesso');
    } catch (err) {
        res.status(500).send('Erro ao excluir usuário');
    }
});

app.get('/acoes', async (req, res) => {
    try {
        const acoes = await Acoes.findAll();
        res.json(acoes);
    } catch (err) {
        res.status(500).send('Erro ao obter ações');
    }
});

app.get('/acoes/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const acao = await Acoes.findOne(ticker);
        if (!acao) {
            return res.status(404).send('Ação não encontrada');
        }
        res.json(acao);
    } catch (err) {
        res.status(500).send('Erro ao obter ação');
    }
});

app.post('/acoes', async (req, res) => {
    const { ticker, nome, setorDeAtuacao, subsetorDeAtuacao, segmentoDeAtuacao, valorDeMercado } = req.body;
    try {
        const existingAcao = await Acoes.findOne(ticker);
        if (existingAcao) {
            return res.status(400).send('Ticker já existe');
        }

        const newAcao = await Acoes.create(ticker, nome, setorDeAtuacao, subsetorDeAtuacao, segmentoDeAtuacao, valorDeMercado);
        res.status(201).send('Ação criada com sucesso');
    } catch (err) {
        res.status(500).send('Erro ao criar ação');
    }
});

app.put('/acoes/:ticker', async (req, res) => {
    const { ticker } = req.params;
    const { nome, setorDeAtuacao, subsetorDeAtuacao, segmentoDeAtuacao, valorDeMercado } = req.body;
    try {
        const success = await Acoes.update(ticker, nome, setorDeAtuacao, subsetorDeAtuacao, segmentoDeAtuacao, valorDeMercado);
        if (!success) {
            return res.status(404).send('Ação não encontrada');
        }
        res.send('Ação atualizada com sucesso');
    } catch (err) {
        res.status(500).send('Erro ao atualizar ação');
    }
});

app.delete('/acoes/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const success = await Acoes.delete(ticker);
        if (!success) {
            return res.status(404).send('Ação não encontrada');
        }
        res.send('Ação deletada com sucesso');
    } catch (err) {
        res.status(500).send('Erro ao deletar ação');
    }
});

const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
    console.log(`Servidor Express rodando na porta ${PORT}`);
});
