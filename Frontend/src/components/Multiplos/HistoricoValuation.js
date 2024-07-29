import React, { useState, useEffect } from 'react';
import axios from 'axios';
import API_BASE_URL from '../../apiConfig';

const HistoricoValuation = ({ ticker }) => {
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchData = async () => {
      setLoading(true);
      try {
        const [dyData, plData, pegRatioData, pvpData, evebitData, evebitdaData, pebitData, pebitdaData, vpaData, pativoData, lpaData, psrData, pcapgiroData, pativocircliqData] = await Promise.all([
          axios.get(`${API_BASE_URL}/multiplos/dy/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/pl/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/peg_ratio/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/pvp/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/ev_ebit/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/ev_ebitda/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/p_ebit/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/p_ebitda/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/vpa/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/p_ativo/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/lpa/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/p_sr/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/p_capgiro/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/p_ativocircliq/${ticker}`)
        ]);

        setData([
          { table: 'DY', ...dyData.data },
          { table: 'P/L', ...plData.data },
          { table: 'PEG Ratio', ...pegRatioData.data },
          { table: 'P/VP', ...pvpData.data },
          { table: 'EV/Ebit', ...evebitData.data },
          { table: 'EV/Ebitda', ...evebitdaData.data },
          { table: 'P/Ebit', ...pebitData.data },
          { table: 'P/Ebitda', ...pebitdaData.data },
          { table: 'VPA', ...vpaData.data },
          { table: 'P/Ativo', ...pativoData.data },
          { table: 'LPA', ...lpaData.data },
          { table: 'P/SR', ...psrData.data },
          { table: 'P/Cap. Giro', ...pcapgiroData.data },
          { table: 'P/Ativo Circ. Liq.', ...pativocircliqData.data }

        ]);
        setLoading(false);
      } catch (err) {
        setError('Erro ao obter dados');
        setLoading(false);
      }
    };

    fetchData();
  }, [ticker]);

  if (loading) return <p>Carregando...</p>;
  if (error) return <p>{error}</p>;

  // Extract years from data columns
  const years = Array.from({ length: 17 }, (_, i) => (2024 - i).toString());

  return (
    <div style={{ paddingLeft: '0px', marginLeft: '0px' }}>
      <h2 style={{ textAlign: 'center', marginBottom: '20px' }}>Histórico de Indicadores de Valuation</h2>
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
                  {row.table === 'DY' && row[year] !== undefined && row[year] !== null
                    ? `${row[year]}%`
                    : row[year] !== undefined && row[year] !== null
                      ? row[year]
                      : '-'}
                </td>
              ))}
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default HistoricoValuation;
