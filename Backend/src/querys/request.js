const axios = require('axios');
const { Client } = require('pg');

// Configuração da conexão com o PostgreSQL
const client = new Client({
    user: 'postgres',
    host: 'localhost',
    database: 'Site',
    password: 'senha123', // Substitua pela senha correta
    port: 5432, // Porta padrão do PostgreSQL
});

// Função para conectar ao PostgreSQL
async function connectDB() {
    try {
        await client.connect();
        console.log('Conexão com PostgreSQL estabelecida.');
    } catch (error) {
        console.error('Erro ao conectar com PostgreSQL:', error);
    }
}

// Função para inserir ou atualizar dados na tabela do PostgreSQL
async function insertOrUpdateDataIntoTable(data) {
  const columns = [
      'ticker', 'price', 'companyname', 'p_l', 'p_vp', 'p_ebit', 'p_ativo', 'ev_ebit',
      'margembruta', 'margemebit', 'margemliquida', 'p_sr', 'p_capitalgiro',
      'p_ativocirculante', 'giroativos', 'roe', 'roa', 'roic',
      'dividaliquidapatrimonioliquido', 'dividaliquidaebit', 'pl_ativo',
      'passivo_ativo', 'liquidezcorrente', 'peg_ratio', 'receitas_cagr5',
      'liquidezmediadiaria', 'vpa', 'lpa', 'valormercado',
      'sectorname', 'subsectorname', 'segmentname', 'lucros_cagr5', 'dy'
  ];

  const filteredData = Object.keys(data)
      .filter(key => columns.includes(key))
      .reduce((obj, key) => {
          obj[key] = data[key];
          return obj;
      }, {});

  const query = `
      INSERT INTO acoes_atual (${columns.join(', ')})
      VALUES (${columns.map((col, index) => `$${index + 1}`).join(', ')})
      ON CONFLICT (ticker) DO UPDATE
      SET ${columns.map((col, index) => `${col} = $${index + 1}`).join(', ')}
  `;

  const values = columns.map(col => filteredData[col]);

  try {
      const result = await client.query(query, values);
      console.log(`Dados para o ticker '${data.ticker}' inseridos/atualizados na tabela: ${result.rowCount} linha(s) afetada(s).`);
  } catch (error) {
      console.error('Erro ao inserir/atualizar dados na tabela:', error);
  }
}

// Função para fazer a requisição à API e obter os dados do ticker especificado
async function fetchJSON(tickerToPrint) {
    const url = `https://statusinvest.com.br/category/advancedsearchresultpaginated?search=%7B%22Sector%22%3A%22%22%2C%22SubSector%22%3A%22%22%2C%22Segment%22%3A%22%22%2C%22my_range%22%3A%22-20%3B100%22%2C%22forecast%22%3A%7B%22upsidedownside%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22estimatesnumber%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22revisedup%22%3Atrue%2C%22reviseddown%22%3Atrue%2C%22consensus%22%3A%5B%5D%7D%2C%22dy%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22p_l%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22peg_ratio%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22p_vp%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22p_ativo%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22margembruta%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22margemebit%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22margemliquida%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22p_ebit%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22ev_ebit%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22dividaliquidaebit%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22dividaliquidapatrimonioliquido%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22p_sr%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22p_capitalgiro%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22p_ativocirculante%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22roe%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22roic%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22roa%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22liquidezcorrente%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22pl_ativo%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22passivo_ativo%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22giroativos%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22receitas_cagr5%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22lucros_cagr5%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22liquidezmediadiaria%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22vpa%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22lpa%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%2C%22valormercado%22%3A%7B%22Item1%22%3Anull%2C%22Item2%22%3Anull%7D%7D&orderColumn=ticker&isAsc=true&page=0&take=621&CategoryType=1`;

    const headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
    };

    try {
        const response = await axios.get(url, { headers });
        const { list } = response.data;

        // Encontrar o objeto com o ticker especificado
        const foundItem = list.find(item => item.ticker === tickerToPrint);
        if (foundItem) {
            console.log(foundItem);
            await insertOrUpdateDataIntoTable(foundItem);
        } else {
            console.log(`Ticker '${tickerToPrint}' não encontrado.`);
        }
    } catch (error) {
        console.error('Erro ao fazer a requisição:', error.message);
    }
}

// Função principal para executar todo o processo
async function main() {
  await connectDB(); // Conectar ao PostgreSQL

  try {
      // Consultar todos os tickers presentes na tabela acoes_atual
      const result = await client.query('SELECT DISTINCT ticker FROM acoes_atual');
      const tickers = result.rows.map(row => row.ticker);

      // Iterar sobre os tickers encontrados
      for (const ticker of tickers) {
          await fetchJSON(ticker); // Obtém os dados da API e insere/atualiza no PostgreSQL
          await sleep(500); // Aguarda um curto período entre as requisições para não sobrecarregar a API
      }

      console.log('Processo de atualização concluído para todos os tickers.');

  } catch (error) {
      console.error('Erro ao preencher tabela:', error);
  } finally {
      await client.end(); // Fecha a conexão com o PostgreSQL
  }
}

// Função para aguardar um tempo específico entre as requisições (opcional)
function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

// Executa a função principal
main().catch(err => console.error('Erro na execução:', err));
