const express = require('express');
const Acoes = require('../models/Acoes');

const router = express.Router();

router.get('/acoes', async (req, res) => {
    try {
        const acoes = await Acoes.findAll();
        res.json(acoes);
    } catch (err) {
        res.status(500).send('Erro ao obter ações');
    }
});

router.get('/acoes/:ticker', async (req, res) => {
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

router.post('/acoes', async (req, res) => {
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

router.put('/acoes/:ticker', async (req, res) => {
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

router.delete('/acoes/:ticker', async (req, res) => {
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

module.exports = router;