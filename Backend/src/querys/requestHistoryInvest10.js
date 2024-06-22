const axios = require('axios');

async function fetchData(ticker) {
    const url = `https://investidor10.com.br/api/historico-indicadores/${ticker}/10`;

    const headers = {};

    try {
        const response = await axios.get(url, { headers });

        if (response.status !== 200) {
            throw new Error(`Erro na solicitação: ${response.status}`);
        }

        const responseData = response.data;

        /*P/L
        P/RECEITA (PSR)
        P/VP
        DIVIDEND YIELD (DY)
        PAYOUT
        MARGEM LÍQUIDA
        MARGEM BRUTA
        MARGEM EBIT
        MARGEM EBITDA
        EV/EBITDA
        EV/EBIT
        P/EBITDA
        P/EBIT
        P/ATIVO
        P/CAP.GIRO
        P/ATIVO CIRC LIQ
        VPA
        LPA
        GIRO ATIVOS
        ROE
        ROIC
        ROA
        DÍVIDA LÍQUIDA / EBITDA
        DÍVIDA LÍQUIDA / EBIT
        DÍVIDA BRUTA / PATRIMÔNIO
        PATRIMÔNIO / ATIVOS
        PASSIVOS / ATIVOS
        LIQUIDEZ CORRENTE
        CAGR RECEITAS 5 ANOS
        CAGR LUCROS 5 ANOS*/

        // Filtrar e formatar os dados desejados apenas para o grupo "P/L"
        const Data = responseData['P\/VP'].map(item => {
            return {
                name: item.name,
                year: item.year,
                value: item.value
            };
        });

        console.log(Data);

    } catch (error) {
        console.error('Erro ao fazer a requisição GET:', error.message);
    }
}

const tickerNumbers = 22; // Adicione quantos números quiser

fetchData(tickerNumbers);
