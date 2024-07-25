const axios = require('axios');
const { Client } = require('pg');

async function delay(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

async function fetchAPI(tickerCompleto, baseUrl, proxyList, retryCount = { 429: 8, 403: 8, 400: 2 }) {
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

    while (proxyList.length > 0) {
        const proxy = proxyList.shift();
        try {
            const [host, port] = proxy.split(':');
            const response = await axios.get(url, {
                headers,
                proxy: { host, port: parseInt(port) }
            });

            if (response.status !== 200) {
                throw new Error(`Erro na solicitação: ${response.status}`);
            }

            const responseData = response.data;
            console.log(`Ticker: ${tickerCompleto} - OK`);

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
                                dataToInsert[year] = saidaObj.pEbit;
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

            return; // Sucesso, sai do loop
        } catch (error) {
            console.error(`Ticker: ${tickerCompleto} - Erro ao fazer a requisição GET com o proxy ${proxy}:`, error.message);
            if (proxyList.length === 0) {
                throw new Error(`Sem proxies disponíveis para o ticker ${tickerCompleto}`);
            }
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
            SELECT ticker FROM dyfinal ORDER BY ticker;
        `;

        const result = await client.query(query);

        const baseUrl = 'https://www.oceans14.com.br/rendaVariavel/acoes/respostaAjax/quadroIndicadores.aspx';
        const proxyList = [
            '51.89.255.67:80',
            '41.207.240.254:80',
            '91.244.66.174:80',
            '50.174.7.154:80',
            '43.130.61.60:3128',
            '213.33.2.28:80',
            '103.237.144.232:1311',
            '198.74.51.79:8888',
            '194.182.178.90:3128',
            '50.231.172.74:80',
            '103.105.196.56:80',
            '20.206.106.192:8123',
            '45.189.151.17:8080',
            '65.109.199.3:80',
            '20.24.43.214:80',
            '47.88.31.196:8080',
            '50.174.145.13:80',
            '167.102.133.106:80',
            '50.218.204.96:80',
            '69.171.76.99:8081',
            '50.223.239.175:80',
            '149.56.18.62:8888',
            '50.217.226.43:80',
            '195.114.209.50:80',
            '188.132.209.245:80',
            '35.180.115.86:20017',
            '116.203.28.43:80',
            '50.218.57.70:80',
            '50.144.189.54:80',
            '47.252.29.28:11222',
            '50.146.203.174:80',
            '50.174.7.158:80',
            '20.210.113.32:8123',
            '189.202.188.149:80'
        ];
        const retryCounts = {}; // Mapa para controlar o número de tentativas por tipo de erro

        for (let row of result.rows) {
            const ticker = row.ticker;
            retryCounts[ticker] = { 429: 8, 403: 8, 400: 2 }; // Inicializa o contador de tentativas para cada ticker
            await fetchAPI(ticker, baseUrl, [...proxyList], retryCounts[ticker]);
            await delay(Math.floor(Math.random() * 3000) + 1000); // Atraso aleatório entre 1 e 4 segundos
        }

    } catch (error) {
        console.error('Erro ao buscar tickers da tabela dyfinal:', error.message);
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
