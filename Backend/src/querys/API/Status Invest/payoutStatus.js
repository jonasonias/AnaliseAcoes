const { Client } = require('pg');

// Configuração do cliente PostgreSQL
const client = new Client({
    user: 'postgres',
    host: 'localhost',
    database: 'Site',
    password: 'senha123',
    port: 5432,
});

// Função para fazer request com tratamento de erros
async function fetchWithRetries(url, retries = 3) {
    const fetch = (await import('node-fetch')).default;
    for (let i = 0; i < retries; i++) {
        try {
            const response = await fetch(url);
            if (response.status === 429 || response.status === 502) {
                console.log(`Erro ${response.status}. Tentando novamente... (${i + 1}/${retries})`);
                await new Promise(res => setTimeout(res, 1000 * (i + 1))); // Espera crescente antes de tentar novamente
                continue;
            }
            if (!response.ok) {
                throw new Error(`Erro HTTP: ${response.status}`);
            }
            return await response.json();
        } catch (error) {
            console.error(`Tentativa ${i + 1} falhou: ${error.message}`);
        }
    }
    throw new Error('Todas as tentativas de request falharam');
}

// Função principal
async function main() {
    await client.connect();
    try {
        const res = await client.query('SELECT ticker FROM dy ORDER BY ticker ASC');
        const tickers = res.rows.map(row => row.ticker);

        for (const ticker of tickers) {
            const url = `https://statusinvest.com.br/acao/payoutresult?code=${ticker}&type=2`;
            try {
                const data = await fetchWithRetries(url);
                const { chart } = data;
                const years = chart.category;
                const values = chart.series.percentual;

                // Construir objeto com os valores para inserção
                const payoutData = {
                    ticker: ticker,
                };
                for (let i = 0; i < years.length; i++) {
                    payoutData[years[i]] = parseFloat(values[i].value.toFixed(3));
                }

                // Inserir dados na tabela dystatus
                const query = `
                    INSERT INTO dystatus (ticker, "2024", "2023", "2022", "2021", "2020", "2019", "2018", "2017", "2016", "2015", "2014", "2013", "2012", "2011", "2010", "2009", "2008")
                    VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18)
                    ON CONFLICT (ticker) DO UPDATE SET
                    "2024" = EXCLUDED."2024",
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
                    "2008" = EXCLUDED."2008"
                `;

                const valuesToInsert = [
                    ticker,
                    payoutData["2024"], payoutData["2023"], payoutData["2022"], payoutData["2021"], payoutData["2020"],
                    payoutData["2019"], payoutData["2018"], payoutData["2017"], payoutData["2016"], payoutData["2015"],
                    payoutData["2014"], payoutData["2013"], payoutData["2012"], payoutData["2011"], payoutData["2010"],
                    payoutData["2009"], payoutData["2008"]
                ];

                await client.query(query, valuesToInsert);
                console.log(`${ticker}: OK`);
            } catch (error) {
                console.error(`Falha ao obter dados para ${ticker}: ${error.message}`);
            }
        }
    } catch (err) {
        console.error('Erro ao conectar ou consultar o banco de dados:', err);
    } finally {
        await client.end();
    }
}

// Executa a função principal
main().catch(console.error);
