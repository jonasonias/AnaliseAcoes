const express = require('express');
const cors = require('cors');
const bcrypt = require('bcryptjs');
const mongoose = require('mongoose');
const User = require('./models/User'); // Importar modelo de usuário
const Action = require('./models/Action'); // Importar modelo de ações
const session = require('express-session');
const { v4: uuidv4 } = require('uuid');
const { connectToDatabase } = require('./db'); // Importar função de conexão
const serveFavicon = require('serve-favicon');

const app = express();

app.use(cors({ origin: true, credentials: true }));
app.use(express.json());

// Sessão baseada em memória (substitua por uma solução persistente em produção)
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

// Conectando ao banco de dados
connectToDatabase('Site');

// Configurando o favicon
app.use(serveFavicon('C:\\Users\\jonas\\Documents\\stocksSiteAWS\\Backend\\public\\favicon.ico'));

// Rota inicial
app.get('/', (req, res) => {
    res.send('Servidor Express está funcionando!');
});

// Rota de soma
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

// Rota de registro
app.post('/register', async (req, res) => {
    const { name, email, password } = req.body;
    try {
        const userExists = await User.findOne({ email });
        if (userExists) {
            return res.status(400).send('Email já está registrado');
        }

        const hashedPassword = await bcrypt.hash(password, 10);
        const newUser = new User({ name, email, password: hashedPassword });
        await newUser.save();

        res.status(201).send('Usuário registrado com sucesso');
    } catch (err) {
        res.status(500).send('Erro ao registrar usuário');
    }
});

// Rota de login
app.post('/login', async (req, res) => {
    const { email, password } = req.body;
    try {
        const user = await User.findOne({ email });
        if (!user) {
            return res.status(400).send('Credenciais inválidas');
        }

        const isMatch = await bcrypt.compare(password, user.password);
        if (!isMatch) {
            return res.status(400).send('Credenciais inválidas');
        }

        // Criar nova sessão
        const sessionId = uuidv4();
        sessions[sessionId] = { userId: user._id, createdAt: new Date(), touch() {
            this.createdAt = new Date();
        } };

        // Retornar uma mensagem de sucesso e a sessão ID
        res.json({ message: 'Login bem-sucedido', sessionId });
    } catch (err) {
        res.status(500).send('Erro ao fazer login');
    }
});

// Middleware de autenticação
async function verificarSessao(req, res, next) {
    if (!req.session) {
        return res.status(401).send('Não autenticado');
    }
    next();
}

// Rota para obter informações do usuário logado
app.get('/user-info', verificarSessao, async (req, res) => {
    try {
        const user = await User.findById(req.session.userId).exec();
        if (!user) {
            return res.status(404).send('Usuário não encontrado');
        }
        res.json({
            id: user._id,
            name: user.name,
            email: user.email
        });
    } catch (err) {
        res.status(500).send('Erro ao recuperar informações do usuário');
    }
});

// Rota de logout
app.post('/logout', verificarSessao, (req, res) => {
    const sessionId = req.header('X-Session-Id');
    delete sessions[sessionId];
    res.send('Logout bem-sucedido');
});

// Rota de exclusão de usuário
app.delete('/delete-user', verificarSessao, async (req, res) => {
    const userId = req.session.userId;
    try {
        await User.findByIdAndDelete(userId);
        delete sessions[req.header('X-Session-Id')];
        res.send('Usuário excluído com sucesso');
    } catch (err) {
        res.status(500).send('Erro ao excluir usuário');
    }
});

// Rota para obter todas as ações
app.get('/acoes', async (req, res) => {
    try {
      const actions = await Action.find({});
      // Garantir que todos os campos estejam definidos
      const validActions = actions.map(action => ({
        code: action.code || 'Código indisponível',
        name: action.name || 'Nome indisponível',
        price: action.price != null ? action.price : null,
      }));
      res.json(validActions);
    } catch (err) {
      res.status(500).send('Erro ao obter ações');
    }
  });

// Rota para obter uma ação específica
app.get('/acoes/:code', async (req, res) => {
    const { code } = req.params;
    try {
        const action = await Action.findOne({ code });
        if (!action) {
            return res.status(404).send('Ação não encontrada');
        }
        res.json(action);
    } catch (err) {
        res.status(500).send('Erro ao obter ação');
    }
});

// Rota para criar uma nova ação
app.post('/acoes', async (req, res) => {
    const { code, name, price } = req.body;
    try {
        const newAction = new Action({ code, name, price });
        await newAction.save();
        res.status(201).send('Ação criada com sucesso');
    } catch (err) {
        res.status(500).send('Erro ao criar ação');
    }
});

// Rota para atualizar uma ação
app.put('/acoes/:code', async (req, res) => {
    const { code } = req.params;
    const { name, price } = req.body;
    try {
        const updatedAction = await Action.findOneAndUpdate({ code }, { name, price }, { new: true });
        if (!updatedAction) {
            return res.status(404).send('Ação não encontrada');
        }
        res.send('Ação atualizada com sucesso');
    } catch (err) {
        res.status(500).send('Erro ao atualizar ação');
    }
});

// Rota para deletar uma ação
app.delete('/acoes/:code', async (req, res) => {
    const { code } = req.params;
    try {
        const deletedAction = await Action.findOneAndDelete({ code });
        if (!deletedAction) {
            return res.status(404).send('Ação não encontrada');
        }
        res.send('Ação deletada com sucesso');
    } catch (err) {
        res.status(500).send('Erro ao deletar ação');
    }
});

// Iniciar o servidor
const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
    console.log(`Servidor Express rodando na porta ${PORT}`);
});