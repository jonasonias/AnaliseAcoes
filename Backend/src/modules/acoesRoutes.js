const express = require('express');
const Acoes = require('../models/Acoes');

const router = express.Router();

router.get('/', async (req, res) => {
    try {
        const acoes = await Acoes.findAll();
        res.json(acoes);
    } catch (err) {
        res.status(500).send('Erro ao obter ações');
    }
});

router.get('/:ticker', async (req, res) => {
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

module.exports = router;