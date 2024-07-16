const axios = require('axios');
const { Client } = require('pg');

async function delay(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

async function fetchAPI(tickerCompleto, baseUrl, retryCount = { 429: 8, 403: 8, 400: 2 }) {
    function reduzirTicker(tickerCompleto) {
        return tickerCompleto.replace(/\d+$/, '');
    }

    let url = `${baseUrl}?empresa=${reduzirTicker(tickerCompleto)}`;

    const userAgents = [
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0',
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36',
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0',
    ];

    const headers = {
        'Referer': 'https://www.oceans14.com.br/acoes/petrobras/petr/balanco-dividendos',
        'User-Agent': userAgents[Math.floor(Math.random() * userAgents.length)],
        'Accept': 'application/json, text/javascript, */*; q=0.01',
        'Accept-Encoding': 'gzip, deflate, br, zstd',
        'Accept-Language': 'pt-BR,pt;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6',
        'Dnt': '1',
        'Priority': 'u=1, i',
        'Sec-Ch-Ua': '"Not/A)Brand";v="8", "Chromium";v="126", "Microsoft Edge";v="126"',
        'Sec-Ch-Ua-Mobile': '?0',
        'Sec-Ch-Ua-Platform': '"Windows"',
        'Sec-Fetch-Dest': 'empty',
        'Sec-Fetch-Mode': 'cors',
        'Sec-Fetch-Site': 'same-origin',
        'X-Requested-With': 'XMLHttpRequest',
        'Cookie': '_ga=GA1.1.2137219279.1718996701; uid=F480C269C95AF12A21539439234B3EE8; origem=direto; gClientId=2137219279.1718996701; ASP.NET_SessionId=ok3dy130kzwwedupwe1zshps; Sessao=964995214F191EC7929737A4C441DD5D; tipoUsuario=Usuario; _ga_QFJT5S2JHV=GS1.1.1719099115.4.1.1719099766.60.0.0; contadorViews=5'
    };

    try {
        const response = await axios.get(url, { headers });

        if (response.status !== 200) {
            throw new Error(`Erro na solicitação: ${response.status}`);
        }

        const responseData = response.data;
        console.log(`Ticker: ${tickerCompleto} - OK`);

        // Conectar ao banco de dados e inserir os dados se a resposta for bem-sucedida
        const client = new Client({
            user: 'postgres',
            host: 'localhost',
            database: 'Site',
            password: 'senha123',
            port: 5432,
        });

        await client.connect();

        try {
            const dataToInsert = {};
            responseData.forEach((item) => {
                if (item.papel.startsWith(tickerCompleto)) {
                    item.saida.forEach((saidaObj) => {
                        if (parseInt(saidaObj.periodo) >= 2000 || saidaObj.periodo === "Hoje") {
                            const year = saidaObj.periodo === "Hoje" ? 'Hoje' : parseInt(saidaObj.periodo);
                            dataToInsert[year] = saidaObj.pl;
                        }
                    });
                }
            });

            const years = [
                'Hoje', '2023', '2022', '2021', '2020', '2019', '2018',
                '2017', '2016', '2015', '2014', '2013', '2012', '2011',
                '2010', '2009', '2008', '2007', '2006', '2005', '2004',
                '2003', '2002', '2001', '2000'
            ];

            const columns = years.map(year => `"${year}"`).join(', ');
            const values = years.map(year => dataToInsert[year] !== undefined ? dataToInsert[year] : 'NULL').join(', ');

            const query = `
                INSERT INTO dyoceans (ticker, ${columns})
                VALUES ('${tickerCompleto}', ${values})
                ON CONFLICT (ticker) DO UPDATE
                SET ${years.map(year => `"${year}" = EXCLUDED."${year}"`).join(', ')};
            `;

            await client.query(query);
        } catch (error) {
            console.error(`Ticker: ${tickerCompleto} - Erro ao processar e salvar os dados:`, error.message);
        } finally {
            await client.end();
        }

    } catch (error) {
        if ((error.response && error.response.status === 429) && retryCount[429] > 0) {
            console.error(`Ticker: ${tickerCompleto} - Erro 429, reintentando...`);
            await delay(2000); // Espera 2 segundos antes de tentar novamente
            retryCount[429]--;
            return fetchAPI(tickerCompleto, baseUrl, retryCount);
        } else if ((error.response && error.response.status === 403) && retryCount[403] > 0) {
            console.error(`Ticker: ${tickerCompleto} - Erro 403, reintentando...`);
            await delay(2000); // Espera 2 segundos antes de tentar novamente
            retryCount[403]--;
            return fetchAPI(tickerCompleto, baseUrl, retryCount);
        } else if (error.response && error.response.status === 400) {
            console.error(`Ticker: ${tickerCompleto} - Erro 400`);
            if (retryCount[400] > 0) {
                console.log(`Tentativas restantes para erro 400: ${retryCount[400]}`);
                await delay(2000); // Espera 2 segundos antes de tentar novamente
                retryCount[400]--;
                baseUrl = 'https://www.oceans14.com.br/rendaVariavel/acoes/respostaAjax/quadroIndicadoresBanco.aspx';
                return fetchAPI(tickerCompleto, baseUrl, retryCount);
            } else {
                console.log(`Limite de tentativas para erro 400 atingido, passando para o próximo ticker.`);
            }
        } else {
            console.error(`Ticker: ${tickerCompleto} - Erro ao fazer a requisição GET:`, error.message);
        }
    }
}

async function fetchAllTickersAndFetchAPI() {
    const client = new Client({
        user: 'postgres',
        host: 'localhost',
        database: 'Site',
        password: 'senha123',
        port: 5432,
    });

    try {
        await client.connect();

        const query = `
            SELECT ticker FROM dy ORDER BY ticker;
        `;

        const result = await client.query(query);

        const baseUrl = 'https://www.oceans14.com.br/rendaVariavel/acoes/respostaAjax/quadroIndicadores.aspx';
        const retryCounts = {}; // Mapa para controlar o número de tentativas por tipo de erro

        for (let row of result.rows) {
            const ticker = row.ticker;
            retryCounts[ticker] = { 429: 8, 403: 8, 400: 2 }; // Inicializa o contador de tentativas para cada ticker
            await fetchAPI(ticker, baseUrl, retryCounts[ticker]);
            await delay(2000); // Aumenta o atraso entre as solicitações para 2 segundos
        }

    } catch (error) {
        console.error('Erro ao buscar tickers da tabela dy:', error.message);
    } finally {
        await client.end();
    }
}

fetchAllTickersAndFetchAPI().catch(err => console.error('Erro na execução:', err));

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
//console.log(`Div. Yield: ${saidaObj.divYield}`);
//console.log(`Div. Payout: ${saidaObj.divPayout}`);
//console.log(`Beta: ${saidaObj.beta}`);
//console.log(`Valorização: ${saidaObj.valorizacao}`);
//console.log(`Negócios/Dia: ${saidaObj.negociosDia}`);
//console.log(`Volume Diário: ${saidaObj.volumeDiario}`);
//console.log(`Valor de Mercado: ${saidaObj.valorMercado}`);
