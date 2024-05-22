const express = require('express');
const cors = require('cors');
const bcrypt = require('bcryptjs');
const mongoose = require('mongoose');
const User = require('./models/User'); // Importar modelo de usuário

const app = express();

app.use(cors()); // Permite todas as origens
app.use(express.json());

// Conectando ao MongoDB
require('./db');

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

        // Simulação de geração de token
        const token = generateToken(user);

        res.json({ token });
    } catch (err) {
        res.status(500).send('Erro ao fazer login');
    }
});

// Simulação de geração de token
function generateToken(user) {
    // Gera um token de sessão com base no ID do usuário
    return user._id.toString();
}

// Middleware de autenticação
function verificarToken(req, res, next) {
    const token = req.headers['authorization'];
    if (!token) {
        console.log('Token de autenticação não fornecido');
        return res.status(401).send('Token de autenticação não fornecido');
    }

    // Simulação de verificação do token
    const userId = token; // Considera-se que o token é o ID do usuário
    req.usuario = { _id: userId };
    next();
}

// Rota protegida
app.get('/rota-protegida', verificarToken, (req, res) => {
    // Simulação de acesso à rota protegida
    res.send(`Rota protegida acessada com sucesso pelo usuário com ID: ${req.usuario._id}`);
});

// Iniciar o servidor
const PORT = process.env.PORT || 3001; // Porta padrão 3000
app.listen(PORT, () => {
    console.log(`Servidor Express rodando na porta ${PORT}`);
});
