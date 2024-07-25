const { Client } = require('pg');
const axios = require('axios');

const client = new Client({
    user: 'postgres',
    host: 'localhost',
    database: 'Site',
    password: 'senha123',
    port: 5432,
});

// Função para atualizar a tabela dyinvest
async function updateDystatus(ticker, earnings) {
    const query = `
        INSERT INTO dyinvest (ticker, "Atual", "2023", "2022", "2021", "2020", "2019", "2018", "2017", "2016", "2015", "2014", "2013", "2012", "2011", "2010", "2009", "2008")
        VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18)
        ON CONFLICT (ticker) DO UPDATE
        SET "Atual" = EXCLUDED."Atual",
            "2023" = EXCLUDED."2023",
            "2022" = EXCLUDED."2022",
            "2021" = EXCLUDED."2021",
            "2020" = EXCLUDED."2020",
            "2019" = EXCLUDED."2019",
            "2018" = EXCLUDED."2018",
            "2017" = EXCLUDED."2017",
            "2016" = EXCLUDED."2016",
            "2015" = EXCLUDED."2015",
            "2014" = EXCLUDED."2014",
            "2013" = EXCLUDED."2013",
            "2012" = EXCLUDED."2012",
            "2011" = EXCLUDED."2011",
            "2010" = EXCLUDED."2010",
            "2009" = EXCLUDED."2009",
            "2008" = EXCLUDED."2008";
    `;

    // Preenche os valores ausentes com null
    const values = [ticker, ...Array.from({ length: 17 }, (_, i) => earnings[2024 - i] || null)];
    
    // Garante que sempre haja 18 valores
    while (values.length < 18) {
        values.push(null);
    }
    
    await client.query(query, values);
}

// Função para fazer o request com retry
async function fetchWithRetry(url, retries = 5, delay = 3000) {
    try {
        const response = await axios.get(url, {
            headers: {
                'Accept': '*/*',
                'Accept-Encoding': 'br',
                'Referer': 'https://investidor10.com.br/acoes/petr4/',
                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0',
                'X-Csrf-Token': 'C356o20j0TBkMh4q8UATfZeFzxqv3ak2ylsbOu86',
                'X-Requested-With': 'XMLHttpRequest'
            }
        });
        return response.data;
    } catch (error) {
        const status = error.response ? error.response.status : null;
        if ([403, 429, 502].includes(status) && retries > 0) {
            console.log(`Erro ${status} recebido. Tentando novamente em ${delay / 1000} segundos...`);
            await new Promise(resolve => setTimeout(resolve, delay));
            return fetchWithRetry(url, retries - 1, delay);
        } else {
            console.error(`Erro ao acessar ${url}:`, error.message);
            throw error;
        }
    }
}

// Função para obter os tickers do banco de dados e processar cada um
async function processTickers() {
    try {
        await client.connect();
        
        // Obtendo os tickers da tabela dyfinal
        const res = await client.query('SELECT ticker FROM dyfinal');
        const tickers = res.rows.map(row => row.ticker);
        
        for (const ticker of tickers) {
            const url = `https://investidor10.com.br/api/dividendos/chart/${ticker}/3650/ano/`;
            
            try {
                // Fazendo o request para a API com retry
                const data = await fetchWithRetry(url);
                
                // Extraindo os valores dos proventos anuais
                const earnings = {};
                if (Array.isArray(data)) {
                    data.forEach(item => {
                        earnings[item.created_at] = item.price;
                    });
                }

                // Atualizando a tabela dyinvest
                await updateDystatus(ticker, earnings);
                console.log(`Dados para o ticker ${ticker} atualizados com sucesso.`);
            } catch (error) {
                console.error(`Erro ao obter dados para o ticker ${ticker}:`, error.message);
            }
        }
    } catch (error) {
        console.error('Erro ao conectar ao banco de dados:', error.message);
    } finally {
        await client.end();
    }
}

// Executando o processo
processTickers();
