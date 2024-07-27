import React, { useState, useEffect } from 'react';
import axios from 'axios';
import API_BASE_URL from '../../apiConfig';

const HistoricoRentabilidade = ({ ticker }) => {
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchData = async () => {
      setLoading(true);
      try {
        const [roeData, roaData, roicData, giroativosData] = await Promise.all([
          axios.get(`${API_BASE_URL}/multiplos/roe/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/roa/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/roic/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/giro_ativos/${ticker}`)
        ]);

        setData([
          { table: 'ROE', ...roeData.data },
          { table: 'ROA', ...roaData.data },
          { table: 'ROIC', ...roicData.data },
          { table: 'Giro Ativos', ...giroativosData.data }
        ]);
        setLoading(false);
      } catch (err) {
        setError('Erro ao obter dados');
        setLoading(false);
      }
    };

    fetchData();
  }, [ticker]);

  const formatValue = (value, isPercentage) => {
    // Try to convert value to a number
    const numberValue = parseFloat(value);

    // Check if the conversion was successful and the value is not NaN
    if (!isNaN(numberValue)) {
      return isPercentage ? `${numberValue.toFixed(2)}%` : numberValue.toFixed(2);
    }
    
    return '-';
  };

  if (loading) return <p>Carregando...</p>;
  if (error) return <p>{error}</p>;

  // Extract years from data columns
  const years = Array.from({ length: 17 }, (_, i) => (2024 - i).toString());

  return (
    <div style={{ paddingLeft: '0px', marginLeft: '0px' }}>
      <h2 style={{ textAlign: 'center', marginBottom: '20px' }}>Histórico de Indicadores de Rentabilidade</h2>
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
              <td style={{ padding: '0px', textAlign: 'center', fontWeight: 'bold', minWidth: '1px', width: '1px' }}>{row.table}</td>
              {years.map(year => (
                <td key={year} style={{ padding: '8px', textAlign: 'center' }}>
                  {row.table === 'Giro Ativos' ? formatValue(row[year], false) : formatValue(row[year], true)}
                </td>
              ))}
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default HistoricoRentabilidade;
