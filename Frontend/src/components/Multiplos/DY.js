import React, { useEffect, useState } from 'react';
import axios from 'axios';
import API_BASE_URL from '../../apiConfig';

const DY = ({ ticker }) => {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get(`${API_BASE_URL}/multiplos/dy/${ticker}`);
        setData(response.data);
      } catch (error) {
        setError('Erro ao obter dados históricos');
      } finally {
        setLoading(false);
      }
    };

    fetchData();
  }, [ticker]);

  if (loading) {
    return <div>Carregando...</div>;
  }

  if (error) {
    return <div>{error}</div>;
  }

  return (
    <div>
      <table style={{ width: '100%', borderCollapse: 'collapse' }}>
        <thead>
          <tr>
            <th style={{ border: '1px solid black', padding: '8px' }}>Ano</th>
            {data && Object.keys(data).reverse().map((key) => (
              key !== 'ticker' && (
                <th key={key} style={{ border: '1px solid black', padding: '8px' }}>{key}</th>
              )
            ))}
          </tr>
        </thead>
        <tbody>
          <tr>
            <td style={{ border: '1px solid black', padding: '8px' }}>D.Y.</td>
            {data && Object.entries(data).reverse().map(([year, value]) => (
              year !== 'ticker' && (
                <td key={year} style={{ border: '1px solid black', padding: '8px' }}>{value}</td>
              )
            ))}
          </tr>
        </tbody>
      </table>
    </div>
  );
};

export default DY;
