import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import API_BASE_URL from '../../apiConfig';
import CustomAlert from '../CustomAlert'; // ajuste o caminho conforme necessário

const NotaAcoes = () => {
  const [acoes, setAcoes] = useState([]);
  const [notasValuation, setNotasValuation] = useState({});
  const [notasEndividamento, setNotasEndividamento] = useState({});
  const [notasEficiencia, setNotasEficiencia] = useState({});
  const [notasRentabilidade, setNotasRentabilidade] = useState({});
  const [notasCrescimento, setNotasCrescimento] = useState({});
  const [alertMessage, setAlertMessage] = useState('');
  const [alertType, setAlertType] = useState('');
  const [sortConfig, setSortConfig] = useState({ key: 'ticker', direction: 'ascending' });
  const [filterText, setFilterText] = useState('');
  const navigate = useNavigate();

  useEffect(() => {
    const fetchAcoes = async () => {
      try {
        const response = await fetch(`${API_BASE_URL}/acoes/setores`);
        if (response.ok) {
          const data = await response.json();
          setAcoes(data);

          const fetchNotasSequentially = async () => {
            const notas = [];
            for (const acao of data) {
              const { ticker } = acao;
              try {
                const [
                  valuationResponse,
                  endividamentoResponse,
                  eficienciaResponse,
                  rentabilidadeResponse,
                  crescimentoResponse
                ] = await Promise.all([
                  fetch(`${API_BASE_URL}/acoes/nota/valuation/${ticker}`),
                  fetch(`${API_BASE_URL}/acoes/nota/endividamento/${ticker}`),
                  fetch(`${API_BASE_URL}/acoes/nota/eficiencia/${ticker}`),
                  fetch(`${API_BASE_URL}/acoes/nota/rentabilidade/${ticker}`),
                  fetch(`${API_BASE_URL}/acoes/nota/crescimento/${ticker}`)
                ]);

                const notasValuation = valuationResponse.ok ? await valuationResponse.json() : [];
                const notasEndividamento = endividamentoResponse.ok ? await endividamentoResponse.json() : [];
                const notasEficiencia = eficienciaResponse.ok ? await eficienciaResponse.json() : [];
                const notasRentabilidade = rentabilidadeResponse.ok ? await rentabilidadeResponse.json() : [];
                const notasCrescimento = crescimentoResponse.ok ? await crescimentoResponse.json() : [];

                const calculateNota = (notas) => {
                  return notas.map(item => {
                    const nota = (item.count_limite * 10) / (35 - item.count_null);
                    return isNaN(nota) ? 0 : nota; // Tratar NaN como 0
                  });
                };

                const calcularMedia = (notas) => {
                  const totalNotas = notas.reduce((sum, nota) => sum + (isNaN(nota) ? 0 : nota), 0);
                  return totalNotas / notas.length;
                };

                const valuationNotas = calculateNota(notasValuation);
                const endividamentoNotas = calculateNota(notasEndividamento);
                const eficienciaNotas = calculateNota(notasEficiencia);
                const rentabilidadeNotas = calculateNota(notasRentabilidade);
                const crescimentoNotas = calculateNota(notasCrescimento);

                notas.push({
                  ticker,
                  mediaNotaValuation: calcularMedia(valuationNotas),
                  mediaNotaEndividamento: calcularMedia(endividamentoNotas),
                  mediaNotaEficiencia: calcularMedia(eficienciaNotas),
                  mediaNotaRentabilidade: calcularMedia(rentabilidadeNotas),
                  mediaNotaCrescimento: calcularMedia(crescimentoNotas)
                });
              } catch (error) {
                console.error(`Erro ao buscar notas para o ticker ${acao.ticker}:`, error);
                notas.push({
                  ticker: acao.ticker,
                  mediaNotaValuation: 0,
                  mediaNotaEndividamento: 0,
                  mediaNotaEficiencia: 0,
                  mediaNotaRentabilidade: 0,
                  mediaNotaCrescimento: 0
                });
              }
            }

            return notas;
          };

          const results = await fetchNotasSequentially();
          const notasMapValuation = results.reduce((acc, { ticker, mediaNotaValuation }) => {
            acc[ticker] = mediaNotaValuation;
            return acc;
          }, {});
          const notasMapEndividamento = results.reduce((acc, { ticker, mediaNotaEndividamento }) => {
            acc[ticker] = mediaNotaEndividamento;
            return acc;
          }, {});
          const notasMapEficiencia = results.reduce((acc, { ticker, mediaNotaEficiencia }) => {
            acc[ticker] = mediaNotaEficiencia;
            return acc;
          }, {});
          const notasMapRentabilidade = results.reduce((acc, { ticker, mediaNotaRentabilidade }) => {
            acc[ticker] = mediaNotaRentabilidade;
            return acc;
          }, {});
          const notasMapCrescimento = results.reduce((acc, { ticker, mediaNotaCrescimento }) => {
            acc[ticker] = mediaNotaCrescimento;
            return acc;
          }, {});

          setNotasValuation(notasMapValuation);
          setNotasEndividamento(notasMapEndividamento);
          setNotasEficiencia(notasMapEficiencia);
          setNotasRentabilidade(notasMapRentabilidade);
          setNotasCrescimento(notasMapCrescimento);
        } else {
          throw new Error('Erro ao buscar ações');
        }
      } catch (error) {
        console.error('Erro ao buscar ações:', error);
        setAlertMessage('Erro ao buscar ações');
        setAlertType('error');
      }
    };

    fetchAcoes();
  }, []);

  const handleTickerClick = (ticker) => {
    navigate(`/acoes/${ticker}`);
  };

  const requestSort = (key) => {
    let direction = 'ascending';
    if (sortConfig.key === key && sortConfig.direction === 'ascending') {
      direction = 'descending';
    }
    setSortConfig({ key, direction });
  };

  const filteredAcoes = acoes.filter((acao) => {
    const ticker = acao.ticker ? acao.ticker.toLowerCase() : '';
    return ticker.includes(filterText.toLowerCase());
  });

  const calculateNotaFinal = (ticker) => {
    const notas = [
      notasValuation[ticker] || 0,
      notasEndividamento[ticker] || 0,
      notasEficiencia[ticker] || 0,
      notasRentabilidade[ticker] || 0,
      notasCrescimento[ticker] || 0
    ];
    const validNotas = notas.filter(nota => !isNaN(nota));
    return validNotas.length ? (validNotas.reduce((sum, nota) => sum + nota, 0) / validNotas.length) : 0;
  };

  const sortedAcoes = filteredAcoes.sort((a, b) => {
    const getNotaValue = (ticker, key) => {
      if (key === 'ticker') {
        return ticker; // Para a coluna ticker, apenas retorna o valor do ticker
      }
      switch (key) {
        case 'mediaNotaValuation':
          return notasValuation[ticker] || 0;
        case 'mediaNotaEndividamento':
          return notasEndividamento[ticker] || 0;
        case 'mediaNotaEficiencia':
          return notasEficiencia[ticker] || 0;
        case 'mediaNotaRentabilidade':
          return notasRentabilidade[ticker] || 0;
        case 'mediaNotaCrescimento':
          return notasCrescimento[ticker] || 0;
        case 'notaFinal':
          return calculateNotaFinal(ticker);
        default:
          return 0;
      }
    };

    const aVal = getNotaValue(a.ticker, sortConfig.key);
    const bVal = getNotaValue(b.ticker, sortConfig.key);

    if (sortConfig.key === 'ticker') {
      return sortConfig.direction === 'ascending'
        ? aVal.localeCompare(bVal)
        : bVal.localeCompare(aVal);
    } else {
      return sortConfig.direction === 'ascending'
        ? aVal - bVal
        : bVal - aVal;
    }
  });

  const getSortIndicator = (key) => {
    if (sortConfig.key === key) {
      return sortConfig.direction === 'ascending' ? '↑' : '↓';
    }
    return '';
  };

  const handleCloseAlert = () => {
    setAlertMessage('');
    setAlertType('');
  };

  return (
    <div>
      <input
        type="text"
        value={filterText}
        onChange={(e) => setFilterText(e.target.value)}
        placeholder="Filtrar por ticker..."
        style={{ marginBottom: '10px' }}
      />
      <table style={{ width: '100%', borderCollapse: 'collapse' }}>
        <thead>
          <tr>
            <th
              style={{ border: '1px solid black', padding: '8px', textAlign: 'center', cursor: 'pointer' }}
              onClick={() => requestSort('ticker')}
            >
              Ticker {getSortIndicator('ticker')}
            </th>
            <th
              style={{ border: '1px solid black', padding: '8px', textAlign: 'center', cursor: 'pointer' }}
              onClick={() => requestSort('mediaNotaValuation')}
            >
              Nota Valuation {getSortIndicator('mediaNotaValuation')}
            </th>
            <th
              style={{ border: '1px solid black', padding: '8px', textAlign: 'center', cursor: 'pointer' }}
              onClick={() => requestSort('mediaNotaEndividamento')}
            >
              Nota Endividamento {getSortIndicator('mediaNotaEndividamento')}
            </th>
            <th
              style={{ border: '1px solid black', padding: '8px', textAlign: 'center', cursor: 'pointer' }}
              onClick={() => requestSort('mediaNotaEficiencia')}
            >
              Nota Eficiência {getSortIndicator('mediaNotaEficiencia')}
            </th>
            <th
              style={{ border: '1px solid black', padding: '8px', textAlign: 'center', cursor: 'pointer' }}
              onClick={() => requestSort('mediaNotaRentabilidade')}
            >
              Nota Rentabilidade {getSortIndicator('mediaNotaRentabilidade')}
            </th>
            <th
              style={{ border: '1px solid black', padding: '8px', textAlign: 'center', cursor: 'pointer' }}
              onClick={() => requestSort('mediaNotaCrescimento')}
            >
              Nota Crescimento {getSortIndicator('mediaNotaCrescimento')}
            </th>
            <th
              style={{ border: '1px solid black', padding: '8px', textAlign: 'center', cursor: 'pointer' }}
              onClick={() => requestSort('notaFinal')}
            >
              Nota Final {getSortIndicator('notaFinal')}
            </th>
          </tr>
        </thead>
        <tbody>
          {sortedAcoes.map((acao) => (
            <tr key={acao.ticker} onClick={() => handleTickerClick(acao.ticker)} style={{ cursor: 'pointer' }}>
              <td style={{ border: '1px solid black', padding: '8px', textAlign: 'center' }}>{acao.ticker}</td>
              <td style={{ border: '1px solid black', padding: '8px', textAlign: 'center' }}>{notasValuation[acao.ticker]?.toFixed(2) || '-'}</td>
              <td style={{ border: '1px solid black', padding: '8px', textAlign: 'center' }}>{notasEndividamento[acao.ticker]?.toFixed(2) || '-'}</td>
              <td style={{ border: '1px solid black', padding: '8px', textAlign: 'center' }}>{notasEficiencia[acao.ticker]?.toFixed(2) || '-'}</td>
              <td style={{ border: '1px solid black', padding: '8px', textAlign: 'center' }}>{notasRentabilidade[acao.ticker]?.toFixed(2) || '-'}</td>
              <td style={{ border: '1px solid black', padding: '8px', textAlign: 'center' }}>{notasCrescimento[acao.ticker]?.toFixed(2) || '-'}</td>
              <td style={{ border: '1px solid black', padding: '8px', textAlign: 'center' }}>{calculateNotaFinal(acao.ticker).toFixed(2)}</td>
            </tr>
          ))}
        </tbody>
      </table>
      {alertMessage && (
        <CustomAlert
          message={alertMessage}
          type={alertType}
          onClose={handleCloseAlert}
        />
      )}
    </div>
  );
};

export default NotaAcoes;
