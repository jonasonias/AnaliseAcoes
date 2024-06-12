const pool = require('../db');
const bcrypt = require('bcryptjs');

class User {
    static async findOne(email) {
        const res = await pool.query('SELECT * FROM users WHERE email = $1', [email]);
        return res.rows[0];
    }

    static async findById(id) {
        const res = await pool.query('SELECT * FROM users WHERE id = $1', [id]);
        return res.rows[0];
    }

    static async create(name, email, password) {
        const hashedPassword = await bcrypt.hash(password, 10);
        const res = await pool.query(
            'INSERT INTO users (name, email, password) VALUES ($1, $2, $3) RETURNING id',
            [name, email, hashedPassword]
        );
        return res.rows[0];
    }

    static async delete(id) {
        await pool.query('DELETE FROM users WHERE id = $1', [id]);
    }
}

module.exports = User;