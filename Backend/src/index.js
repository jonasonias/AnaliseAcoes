const express = require('express');
const cors = require('cors');
const bcrypt = require('bcryptjs');
const mongoose = require('mongoose');
const User = require('./models/User'); // Importar modelo de usuário
const session = require('express-session');
const crypto = require('crypto');
const { connectToDatabase } = require('./db'); // Importar função de conexão

const app = express();

// Lista de origens permitidas
const allowedOrigins = [
    'http://localhost:3000',
    'https://main.d1cp8k4m9e7a1u.amplifyapp.com',
    'https://jonasonias.github.io/stocksSiteAWS/'
];

const corsOptions = {
    origin: function (origin, callback) {
        // Permite a solicitação sem origem (como de Postman ou CURL)
        if (!origin) return callback(null, true);
        if (allowedOrigins.indexOf(origin) !== -1) {
            callback(null, true);
        } else {
            callback(new Error('Not allowed by CORS'));
        }
    },
    credentials: true // Permitir cookies e credenciais
};

app.use(cors(corsOptions)); // Configurar CORS
app.use(express.json());

// Gerar uma chave secreta segura
const secret = crypto.randomBytes(64).toString('hex');

// Configurar sessão
// Configurar sessão
app.use(session({
    secret: secret, // Usar a chave secreta segura gerada
    resave: false,
    saveUninitialized: false,
    cookie: {
        maxAge: 60 * 60 * 1000, // 1 hora
        secure: process.env.NODE_ENV === 'production', // Definir secure como true em produção
        httpOnly: true,
        sameSite: 'lax' // Proteção CSRF
    }
}));

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

        // Armazenar informações do usuário na sessão
        req.session.user = { id: user._id, name: user.name };

        // Retornar uma mensagem de sucesso e a sessão ID
        res.json({ message: 'Login bem-sucedido', sessionId: req.session.id });
    } catch (err) {
        res.status(500).send('Erro ao fazer login');
    }
});

// Rota para obter informações do usuário logado
app.get('/user-info', async (req, res) => {
    if (!req.session.user) {
        return res.status(401).send('Não autorizado');
    }

    try {
        const user = await User.findById(req.session.user.id).exec();
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
app.post('/logout', (req, res) => {
    req.session.destroy((err) => {
        if (err) {
            return res.status(500).send('Erro ao fazer logout');
        }
        res.send('Logout bem-sucedido');
    });
});

// Middleware de autenticação
function verificarSessao(req, res, next) {
    if (!req.session.user) {
        return res.status(401).send('Não autenticado');
    }
    next();
}

// Rota protegida
app.get('/rota-protegida', verificarSessao, (req, res) => {
    res.send(`Rota protegida acessada com sucesso por ${req.session.user.name}`);
});

// Rota de exclusão de usuário
app.delete('/delete-user', verificarSessao, async (req, res) => {
    const userId = req.session.user.id;
    try {
        await User.findByIdAndDelete(userId);
        req.session.destroy((err) => {
            if (err) {
                return res.status(500).send('Erro ao excluir usuário e fazer logout');
            }
            res.send('Usuário excluído e logout bem-sucedido');
        });
    } catch (err) {
        res.status(500).send('Erro ao excluir usuário');
    }
});

// Iniciar o servidor
const PORT = process.env.PORT || 3001; // Porta padrão 3000
app.listen(PORT, () => {
    console.log(`Servidor Express rodando na porta ${PORT}`);
});