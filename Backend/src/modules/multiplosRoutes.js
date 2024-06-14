const express = require('express');
const Mult = require('../models/Multiplos');

const router = express.Router();

router.get('/dy/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const dyData = await Mult.findOne(ticker, 'dy');
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
        const plData = await Mult.findOne(ticker, 'pl');
        if (!plData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(plData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

module.exports = router;
