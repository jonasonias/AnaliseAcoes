const pool = require('../db');

class Acoes {
    static async findAll() {
        const res = await pool.query('SELECT * FROM acoes');
        return res.rows;
    }

    static async findOne(ticker) {
        const res = await pool.query('SELECT * FROM acoes WHERE ticker = $1', [ticker]);
        return res.rows[0];
    }

    static async create(ticker, nome, setorDeAtuacao, subsetorDeAtuacao, segmentoDeAtuacao, valorDeMercado) {
        const res = await pool.query(
            'INSERT INTO acoes (ticker, nome, setorDeAtuacao, subsetorDeAtuacao, segmentoDeAtuacao, valorDeMercado) VALUES ($1, $2, $3, $4, $5, $6) RETURNING id',
            [ticker, nome, setorDeAtuacao, subsetorDeAtuacao, segmentoDeAtuacao, valorDeMercado]
        );
        return res.rows[0];
    }

    static async update(ticker, nome, setorDeAtuacao, subsetorDeAtuacao, segmentoDeAtuacao, valorDeMercado) {
        const res = await pool.query(
            'UPDATE acoes SET nome = $2, setorDeAtuacao = $3, subsetorDeAtuacao = $4, segmentoDeAtuacao = $5, valorDeMercado = $6 WHERE ticker = $1',
            [ticker, nome, setorDeAtuacao, subsetorDeAtuacao, segmentoDeAtuacao, valorDeMercado]
        );
        return res.rowCount > 0;
    }

    static async delete(ticker) {
        const res = await pool.query('DELETE FROM acoes WHERE ticker = $1', [ticker]);
        return res.rowCount > 0;
    }
}

module.exports = Acoes;
