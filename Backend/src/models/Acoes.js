const mongoose = require('mongoose');

const AcoesSchema = new mongoose.Schema({
    ticker: { type: String, required: true },
    nome: { type: String, required: true },
    setorDeAtuacao: { type: String, required: true },
    subsetorDeAtuacao: { type: String, required: true },
    segmentoDeAtuacao: { type: String, required: true },
    valorDeMercado: { type: Number, required: true }
});

const Acoes = mongoose.model('Ações', AcoesSchema);

module.exports = Acoes;