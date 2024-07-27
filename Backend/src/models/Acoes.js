const pool = require('../db');

class Acoes {
    static async findAll_Setores() {
        const res = await pool.query('SELECT * FROM acoes_setores');
        return res.rows;
    }

    static async findOne_Setores(ticker) {
        const res = await pool.query('SELECT * FROM acoes_setores WHERE ticker = $1', [ticker]);
        return res.rows[0];
    }
    static async findAll_Atual() {
        const res = await pool.query('SELECT * FROM acoes_atualfinal');
        return res.rows;
    }

    static async findOne_Atual(ticker) {
        const res = await pool.query('SELECT * FROM acoes_atualfinal WHERE ticker = $1', [ticker]);
        return res.rows[0];
    }

}

module.exports = Acoes;
