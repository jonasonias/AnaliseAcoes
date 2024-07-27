import React, { useState, useEffect } from 'react';
import axios from 'axios';
import API_BASE_URL from '../../apiConfig';

const HistoricoEficiencia = ({ ticker }) => {
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchData = async () => {
      setLoading(true);
      try {
        const [mbrutaData, mebitData, mebitdaData, mliquidaData] = await Promise.all([
          axios.get(`${API_BASE_URL}/multiplos/m_bruta/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/m_ebit/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/m_ebitda/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/m_liquida/${ticker}`)
        ]);

        setData([
          { table: 'Margem Bruta', ...mbrutaData.data },
          { table: 'Margem EBIT', ...mebitData.data },
          { table: 'Margem EBITDA', ...mebitdaData.data },
          { table: 'Margem Líquida', ...mliquidaData.data }
        ]);
        setLoading(false);
      } catch (err) {
        setError('Erro ao obter dados');
        setLoading(false);
      }
    };

    fetchData();
  }, [ticker]);

  const formatPercentage = (value) => {
    // Try to convert value to a number
    const numberValue = parseFloat(value);

    // Check if the conversion was successful and the value is not NaN
    if (!isNaN(numberValue)) {
      return `${numberValue.toFixed(2)}%`;
    }
    
    return '-';
  };

  if (loading) return <p>Carregando...</p>;
  if (error) return <p>{error}</p>;

  // Extract years from data columns
  const years = Array.from({ length: 17 }, (_, i) => (2024 - i).toString());

  return (
    <div style={{ paddingLeft: '0px', marginLeft: '0px' }}>
      <h2 style={{ textAlign: 'center', marginBottom: '20px' }}>Histórico de Indicadores de Eficiência</h2>
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
              <td style={{ padding: '0px', textAlign: 'center', fontWeight: 'bold', minWidth: '125px', width: '150px' }}>{row.table}</td>
              {years.map(year => (
                <td key={year} style={{ padding: '8px', textAlign: 'center' }}>
                  {formatPercentage(row[year])}
                </td>
              ))}
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default HistoricoEficiencia;
