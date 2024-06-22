const axios = require('axios');

async function fetchAPI(ticker) {
    const url = `https://www.oceans14.com.br/rendaVariavel/acoes/respostaAjax/quadroIndicadoresBanco.aspx?empresa=${ticker}`;
                 //https://www.oceans14.com.br/rendaVariavel/acoes/respostaAjax/quadroIndicadoresBanco.aspx?empresa=${ticker}
                 //https://www.oceans14.com.br/rendaVariavel/acoes/respostaAjax/quadroIndicadores.aspx?empresa=${ticker}

    const headers = {
        'Referer': `https://www.oceans14.com.br/acoes/banco-do-brasil/bbas3/balanco-dividendos`,
    };

    try {
        const response = await axios.get(url, { headers });

        if (response.status !== 200) {
            throw new Error(`Erro na solicitação: ${response.status}`);
        }

        const responseData = response.data;

        responseData.forEach((item) => {
            console.log(`Papel: ${item.papel}`);
        
            item.saida.forEach((saidaObj) => {
                if (parseInt(saidaObj.periodo) >= 2008 || saidaObj.periodo == "Hoje") {
                    console.log('------------------------');
                    console.log(`Período: ${saidaObj.periodo}`);
                    //console.log(`LPA: ${saidaObj.lpa}`);
                    //console.log(`PL: ${saidaObj.pl}`);
                    //console.log(`VPA: ${saidaObj.vpa}`);
                    //console.log(`P/VP: ${saidaObj.pVp}`);
                    //console.log(`P/EBIT: ${saidaObj.pEbit}`);
                    //console.log(`P/EBITDA: ${saidaObj.pEbitda}`);
                    //console.log(`P/Ativos: ${saidaObj.pAtivos}`);
                    //console.log(`EBITDA: ${saidaObj.ebitda}`);
                    //console.log(`Margem EBITDA: ${saidaObj.margemEbitda}`);
                    //console.log(`PSR: ${saidaObj.psr}`);
                    //console.log(`ROE: ${saidaObj.roe}`);
                    //console.log(`ROA: ${saidaObj.roa}`);
                    //console.log(`ROIC: ${saidaObj.roic}`);
                    //console.log(`EV/EBIT: ${saidaObj.evEbit}`);
                    //console.log(`EV/EBITDA: ${saidaObj.evEbitda}`);
                    console.log(`Div. Yield: ${saidaObj.divYield}`);
                    //console.log(`Div. Payout: ${saidaObj.divPayout}`);
                    //console.log(`Beta: ${saidaObj.beta}`);
                    //console.log(`Valorização: ${saidaObj.valorizacao}`);
                    //console.log(`Negócios/Dia: ${saidaObj.negociosDia}`);
                    //console.log(`Volume Diário: ${saidaObj.volumeDiario}`);
                    //console.log(`Valor de Mercado: ${saidaObj.valorMercado}`);
                }
            });
        });

    } catch (error) {
        console.error('Erro ao fazer a requisição GET:', error.message);
    }
}

// Executa a função para fazer o request GET com o ticker desejado (exemplo: "PETR")
fetchAPI('BBAS').catch(err => console.error('Erro na execução:', err));
