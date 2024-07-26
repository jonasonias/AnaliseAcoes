const pool = require('../db');

class Acoes {
    static async findAll() {
        const res = await pool.query('SELECT * FROM acoes_setores');
        return res.rows;
    }

    static async findOne(ticker) {
        const res = await pool.query('SELECT * FROM acoes_setores WHERE ticker = $1', [ticker]);
        return res.rows[0];
    }

}

module.exports = Acoes;
