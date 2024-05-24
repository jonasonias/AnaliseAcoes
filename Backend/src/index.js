const express = require('express');
const cors = require('cors');
const bcrypt = require('bcryptjs');
const mongoose = require('mongoose');
const User = require('./models/User'); // Importar modelo de usuário
const session = require('express-session');
const { v4: uuidv4 } = require('uuid');
const { connectToDatabase } = require('./db'); // Importar função de conexão

const app = express();

// Lista de origens permitidas
const allowedOrigins = [
    'http://localhost:3000',
    'http://localhost:3001',
    'https://jonasonias.github.io' // Removendo a parte da rota específica
];

const corsOptions = {
    origin: function (origin, callback) {
        if (!origin) return callback(null, true);
        if (allowedOrigins.indexOf(origin) !== -1) {
            callback(null, true);
        } else {
            callback(new Error('Not allowed by CORS'));
        }
    },
    credentials: true
};

app.use(cors(corsOptions));
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
connectToDatabase('Users');

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

// Iniciar o servidor
const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
    console.log(`Servidor Express rodando na porta ${PORT}`);
});