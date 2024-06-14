const pool = require('../db');

class Multiplos {

    static async findOne(ticker, table) {
        const res = await pool.query(`SELECT * FROM ${table} WHERE ticker = $1`, [ticker]);
        return res.rows[0];
    }
}

module.exports = Multiplos;
