const axios = require('axios');
const { Client } = require('pg');

async function fetchJSON(ticker, keyToPrint) {
    const url = 'https://statusinvest.com.br/acao/indicatorhistoricallist';

    const headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0',
        'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
    };

    const data = `codes%5B%5D=${ticker.toLowerCase()}&time=5&byQuarter=false&futureData=false`;

    const maxRetries = 5;

    for (let attempt = 0; attempt < maxRetries; attempt++) {
        try {
            const response = await axios.post(url, data, { headers });

            if (!response.data || !response.data.data || !response.data.data[ticker.toLowerCase()]) {
                throw new Error(`Dados inválidos retornados pela API para o ticker ${ticker}`);
            }

            const tickerData = response.data.data[ticker.toLowerCase()];
            const obj = tickerData.find(item => item.key === keyToPrint);

            if (!obj) {
                throw new Error(`Chave (key) '${keyToPrint}' não encontrada nos dados retornados`);
            }

            const results = {};
            if (obj.ranks && obj.ranks.length > 0) {
                obj.ranks.forEach(rank => {
                    results[rank.rank] = rank.value;
                });
            }

            return results;

        } catch (error) {
            if (error.response && error.response.status === 429) {
                const delay = Math.pow(2, attempt) * 1000; // Exponential backoff
                console.error(`Erro 429: Muitas requisições. Tentativa ${attempt + 1} de ${maxRetries}. Aguardando ${delay / 1000} segundos antes de tentar novamente.`);
                await new Promise(resolve => setTimeout(resolve, delay));
            } else {
                console.error(`Erro ao fazer a requisição POST para o ticker ${ticker}:`, error.message);
                return null;
            }
        }
    }
    
    console.error(`Falha ao fazer a requisição POST para o ticker ${ticker} após ${maxRetries} tentativas.`);
    return null;
}

async function updateDatabaseWithAPIData() {
    const client = new Client({
        user: 'postgres',
        host: 'localhost',
        database: 'Site',
        password: 'senha123',
        port: 5432,
    });

    await client.connect();

    try {
        // Obtenha os tickers em ordem alfabética
        const res = await client.query('SELECT ticker FROM dy ORDER BY ticker ASC');
        const tickers = res.rows.map(row => row.ticker);

        for (const ticker of tickers) {
            const data = await fetchJSON(ticker, 'lucros_cagr5');

            if (data) {
                // Colunas da tabela "dystatus" para os anos de 2008 a 2024
                const years = [
                    '2024', '2023', '2022', '2021', '2020', '2019', '2018',
                    '2017', '2016', '2015', '2014', '2013', '2012', '2011',
                    '2010', '2009', '2008'
                ];

                // Garante que todos os valores sejam definidos
                const columns = years.map(year => `"${year}"`).join(', ');
                const values = years.map(year => data[year] !== undefined ? data[year] : 'NULL').join(', ');

                const query = `
                    INSERT INTO dystatus (ticker, ${columns})
                    VALUES ('${ticker}', ${values})
                    ON CONFLICT (ticker) DO UPDATE
                    SET ${years.map(year => `"${year}" = EXCLUDED."${year}"`).join(', ')};
                `;

                await client.query(query);

                console.log(`${ticker} OK`);

            } else {
                console.log(`${ticker} Falhou`);
            }

            // Adicione um atraso entre as requisições para evitar erros 429
            await new Promise(resolve => setTimeout(resolve, 2000));
        }
    } catch (error) {
        console.error('Erro ao acessar o banco de dados:', error.message);
    } finally {
        await client.end();
    }
}

updateDatabaseWithAPIData().catch(err => console.error('Erro na execução:', err));

/*dy
p_l
p_vp
p_ebita
p_ebit
p_sr
p_ativo
p_capitlgiro
p_ativocirculante
ev_ebitda
ev_ebit
lpa
vpa
peg_Ratio
dividaliquida_patrimonioliquido
dividaliquida_ebitda
dividaliquida_ebit
patrimonio_ativo
passivo_ativo
liquidezcorrente
margembruta
margemebitda
margemebit
margemliquida
roe
roa
roic
giro_ativos
receitas_cagr5
lucros_cagr5*/
