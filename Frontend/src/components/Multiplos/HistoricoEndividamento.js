import React, { useState, useEffect } from 'react';
import axios from 'axios';
import API_BASE_URL from '../../apiConfig';

const HistoricoEndividamento = ({ ticker }) => {
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchData = async () => {
      setLoading(true);
      try {
        const [divliqplData, divbrutaplData, divliqebitData, divliqebitdaData, plativosData, passivosativosData, liqcorrenteData] = await Promise.all([
          axios.get(`${API_BASE_URL}/multiplos/divliq_pl/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/divbruta_pl/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/divliq_ebit/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/divliq_ebitda/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/pl_ativos/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/passivos_ativos/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/liq_corrente/${ticker}`)
        ]);

        setData([
          { table: 'Div. Líq./Patri. Líq', ...divliqplData.data },
          { table: 'Div. Bruta/Patri. Líq', ...divbrutaplData.data },
          { table: 'Div. Líq./EBIT', ...divliqebitData.data },
          { table: 'Div. Líq./EBITDA', ...divliqebitdaData.data },
          { table: 'Patri. Líq./Ativos', ...plativosData.data },
          { table: 'Passivos/Ativos', ...passivosativosData.data },
          { table: 'Liquidez Corrente', ...liqcorrenteData.data }
        ]);
        setLoading(false);
      } catch (err) {
        setError('Erro ao obter dados de Endividamento');
        setLoading(false);
      }
    };

    fetchData();
  }, [ticker]);

  if (loading) return <p>Carregando...</p>;
  if (error) return <div><h3 style={{ textAlign: 'center', marginBottom: '20px' }}>{error}</h3></div>;

  // Extract years from data columns
  const years = Array.from({ length: 17 }, (_, i) => (2024 - i).toString());

  return (
    <div style={{ paddingLeft: '0px', marginLeft: '0px' }}>
      <h2 style={{ textAlign: 'center', marginBottom: '20px' }}>Histórico de Indicadores de Endividamento</h2>
      <table style={{ width: '100%', borderCollapse: 'collapse' }}>
        <thead>
          <tr>
            <th style={{ padding: '8px', textAlign: 'center', minWidth: '50px', width: '50px' }}></th>
            {years.map(year => (
              <th key={year} style={{ padding: '8px', textAlign: 'center' }}>{year}</th>
            ))}
          </tr>
        </thead>
        <tbody>
          {data.map((row) => (
            <tr key={row.table}>
              <td style={{ padding: '0px', textAlign: 'Center', fontWeight: 'bold', minWidth: '10px', width: '150px' }}>{row.table}</td>
              {years.map(year => (
                <td key={year} style={{ padding: '8px', textAlign: 'center' }}>
                  {row[year] !== undefined && row[year] !== null ? row[year] : '-'}
                </td>
              ))}
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default HistoricoEndividamento;
