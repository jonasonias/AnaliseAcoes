const axios = require('axios');

async function fetchJSON(ticker, keyToPrint) {
    const url = 'https://statusinvest.com.br/acao/indicatorhistoricallist';

    const headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0',
        'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
    };

    const data = `codes%5B%5D=${ticker.toLowerCase()}&time=5&byQuarter=false&futureData=false`;

    try {
        const response = await axios.post(url, data, { headers });

        if (!response.data || !response.data.data || !response.data.data[ticker.toLowerCase()]) {
            throw new Error(`Dados inválidos retornados pela API para o ticker ${ticker}`);
        }

        // Acessar os dados corretamente
        const tickerData = response.data.data[ticker.toLowerCase()];

        // Encontrar o objeto correspondente à chave (key) especificada
        const obj = tickerData.find(item => item.key === keyToPrint);

        if (!obj) {
            throw new Error(`Chave (key) '${keyToPrint}' não encontrada nos dados retornados`);
        }

        // Imprimir os dados da chave (key) especificada
        console.log('Key:', obj.key);

        if (obj.ranks && obj.ranks.length > 0) {
            obj.ranks.forEach(rank => {
                console.log('Ano:', rank.rank, 'Valor:', rank.value);
            });
        }

        console.log('------------------------');

    } catch (error) {
        console.error('Erro ao fazer a requisição POST:', error.message);
    }
}

// Executa a função para fazer o request POST com o ticker desejado (exemplo: "PETR4") e a chave (key) desejada (exemplo: "dy")
fetchJSON('PETR4', 'dy').catch(err => console.error('Erro na execução:', err));

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
