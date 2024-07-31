const express = require('express');
const Acoes = require('../models/Acoes');

const router = express.Router();

router.get('/setores', async (req, res) => {
    try {
        const acoes = await Acoes.findAll_Setores();
        res.json(acoes);
    } catch (err) {
        res.status(500).send('Erro ao obter ações');
    }
});

router.get('/setores/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const acao = await Acoes.findOne_Setores(ticker);
        if (!acao) {
            return res.status(404).send('Ação não encontrada');
        }
        res.json(acao);
    } catch (err) {
        res.status(500).send('Erro ao obter ação');
    }
});

router.get('/atual', async (req, res) => {
    try {
        const acoes = await Acoes.findAll_Atual();
        res.json(acoes);
    } catch (err) {
        res.status(500).send('Erro ao obter ações');
    }
});

router.get('/atual/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const acao = await Acoes.findOne_Atual(ticker);
        if (!acao) {
            return res.status(404).send('Ação não encontrada');
        }
        res.json(acao);
    } catch (err) {
        res.status(500).send('Erro ao obter ação');
    }
});

router.get('/nota/valuation/:ticker', async (req, res) => {
    try {
        const ticker = req.params.ticker;
        const contagem = await Acoes.countIndicadoresValuation(ticker);
        res.json(contagem);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
});

module.exports = router;