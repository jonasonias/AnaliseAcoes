const express = require('express');
const bcrypt = require('bcryptjs');
const { v4: uuidv4 } = require('uuid');
const User = require('../models/User');

const router = express.Router();
const sessions = {};

router.use((req, res, next) => {
    const sessionId = req.header('X-Session-Id');
    if (sessionId && sessions[sessionId]) {
        req.session = sessions[sessionId];
    } else {
        req.session = null;
    }
    next();
});

router.use((req, res, next) => {
    if (req.session) {
        req.session.touch();
    }
    next();
});


router.post('/soma', (req, res) => {
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

router.post('/register', async (req, res) => {
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

router.post('/login', async (req, res) => {
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

router.get('/user-info', verificarSessao, async (req, res) => {
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

router.post('/logout', verificarSessao, (req, res) => {
    const sessionId = req.header('X-Session-Id');
    delete sessions[sessionId];
    res.send('Logout bem-sucedido');
});

router.delete('/delete-user', verificarSessao, async (req, res) => {
    const userId = req.session.userId;
    try {
        await User.delete(userId);
        delete sessions[req.header('X-Session-Id')];
        res.send('Usuário excluído com sucesso');
    } catch (err) {
        res.status(500).send('Erro ao excluir usuário');
    }
});

module.exports = router;