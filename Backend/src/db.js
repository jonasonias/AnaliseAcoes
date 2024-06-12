const { Pool } = require('pg');

const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'Site',
    password: 'senha123', // Substitua pela senha correta
    port: 5432
});

module.exports = pool;
