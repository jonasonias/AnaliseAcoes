const express = require('express');
const Multiplos = require('../models/Multiplos');

const router = express.Router();

router.get('/dy/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const dyData = await Multiplos.findOne(ticker, 'dyfinal');
        if (!dyData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(dyData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/pl/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const plData = await Multiplos.findOne(ticker, 'plfinal');
        if (!plData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(plData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/peg_ratio/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const peg_ratioData = await Multiplos.findOne(ticker, 'peg_ratiofinal');
        if (!peg_ratioData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(peg_ratioData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

module.exports = router;
