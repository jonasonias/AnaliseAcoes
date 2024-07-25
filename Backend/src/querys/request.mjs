// Executar para atualizar a tabea acoes_atualfinal

import pkg from 'pg';
const { Client } = pkg;
import fetch from 'node-fetch';

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
        const res = await client.query('SELECT ticker FROM dyfinal ORDER BY ticker ASC');
        const tickers = res.rows.map(row => row.ticker);

        const url = 'https://statusinvest.com.br/category/advancedsearchresultpaginated?search=%7B%22Sector%22%3A%22%22%2C%22SubSector%22%3A%22%22%2C%22Segment%22%3A%22%22%2C%22my_range%22%3A%22-20%3B100%22%2C%22forecast%22%3A%7B%22upsidedownside%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22estimatesnumber%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22revisedup%22%3Atrue%2C%22reviseddown%22%3Atrue%2C%22consensus%22%3A%5B%5D%7D%2C%22dy%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22p_l%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22peg_ratio%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22p_vp%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22p_ativo%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22margembruta%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22margemebit%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22margemliquida%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22p_ebit%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22ev_ebit%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22dividaliquidaebit%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22dividaliquidapatrimonioliquido%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22p_sr%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22p_capitalgiro%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22p_ativocirculante%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22roe%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22roic%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22roa%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22liquidezcorrente%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22pl_ativo%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22passivo_ativo%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22giroativos%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22receitas_cagr5%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22lucros_cagr5%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22liquidezmediadiaria%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22valormercado%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%7D&orderColumn=ticker&isAsc=true&page=0&take=621&CategoryType=1';
        const data = await fetchWithRetries(url);
        const tickerData = data.list.reduce((acc, item) => {
            acc[item.ticker] = item;
            return acc;
        }, {});

        for (const ticker of tickers) {
            if (tickerData[ticker]) {
                const {
                    price,
                    dy,
                    p_l,
                    peg_ratio,
                    p_vp,
                    ev_ebit,
                    p_ebit,
                    vpa,
                    p_ativo,
                    lpa,
                    p_sr,
                    p_capitalgiro,
                    p_ativocirculante,
                    dividaliquidapatrimonioliquido,
                    dividaliquidaebit,
                    pl_ativo,
                    passivo_ativo,
                    liquidezcorrente,
                    margembruta,
                    margemebit,
                    margemliquida,
                    roe,
                    roa,
                    roic,
                    giroativos,
                    receitas_cagr5,
                    lucros_cagr5,
                    liquidezmediadiaria,
                    valormercado
                } = tickerData[ticker];

                // Inserir ou atualizar dados na tabela acoes_atualfinal
                const query = `
                    INSERT INTO acoes_atualfinal (
                        ticker, price, dy, p_l, peg_ratio, p_vp, ev_ebit, p_ebit, vpa, p_ativo, lpa, p_sr, p_capitalgiro, p_ativocirculante, divliq_pl, divliq_ebit, pl_ativo, passivo_ativo, liquidezcorrente, margembruta, margemebit, margemliquida, roe, roa, roic, giroativos, receitas_cagr5, lucros_cagr5, liquidezmediadiaria, valormercado
                    ) VALUES (
                        $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $30
                    ) ON CONFLICT (ticker) DO UPDATE SET
                        price = EXCLUDED.price,
                        dy = EXCLUDED.dy,
                        p_l = EXCLUDED.p_l,
                        peg_ratio = EXCLUDED.peg_ratio,
                        p_vp = EXCLUDED.p_vp,
                        ev_ebit = EXCLUDED.ev_ebit,
                        p_ebit = EXCLUDED.p_ebit,
                        vpa = EXCLUDED.vpa,
                        p_ativo = EXCLUDED.p_ativo,
                        lpa = EXCLUDED.lpa,
                        p_sr = EXCLUDED.p_sr,
                        p_capitalgiro = EXCLUDED.p_capitalgiro,
                        p_ativocirculante = EXCLUDED.p_ativocirculante,
                        divliq_pl = EXCLUDED.divliq_pl,
                        divliq_ebit = EXCLUDED.divliq_ebit,
                        pl_ativo = EXCLUDED.pl_ativo,
                        passivo_ativo = EXCLUDED.passivo_ativo,
                        liquidezcorrente = EXCLUDED.liquidezcorrente,
                        margembruta = EXCLUDED.margembruta,
                        margemebit = EXCLUDED.margemebit,
                        margemliquida = EXCLUDED.margemliquida,
                        roe = EXCLUDED.roe,
                        roa = EXCLUDED.roa,
                        roic = EXCLUDED.roic,
                        giroativos = EXCLUDED.giroativos,
                        receitas_cagr5 = EXCLUDED.receitas_cagr5,
                        lucros_cagr5 = EXCLUDED.lucros_cagr5,
                        liquidezmediadiaria = EXCLUDED.liquidezmediadiaria,
                        valormercado = EXCLUDED.valormercado;
                `;
                const values = [
                    ticker, price, dy, p_l, peg_ratio, p_vp, ev_ebit, p_ebit, vpa, p_ativo, lpa, p_sr, p_capitalgiro, p_ativocirculante, dividaliquidapatrimonioliquido, dividaliquidaebit, pl_ativo, passivo_ativo, liquidezcorrente, margembruta, margemebit, margemliquida, roe, roa, roic, giroativos, receitas_cagr5, lucros_cagr5, liquidezmediadiaria, valormercado
                ];
                try {
                    await client.query(query, values);
                    console.log(`Dados atualizados para o ticker: ${ticker}`);
                } catch (err) {
                    console.error(`Erro ao atualizar dados para o ticker: ${ticker}`, err.stack);
                }
            } else {
                console.log(`Ticker não encontrado na resposta da API: ${ticker}`);
            }
        }
    } catch (err) {
        console.error('Erro na execução do script', err.stack);
    } finally {
        await client.end();
    }
}

main();
