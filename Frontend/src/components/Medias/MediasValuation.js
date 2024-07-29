import React, { useState, useEffect } from 'react';
import axios from 'axios';
import API_BASE_URL from '../../apiConfig';

const MediasValuation = ({ ticker }) => {
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [dy, setDy] = useState(null); 
  const [pl, setPl] = useState(null);
  const [pegratio, setPegRatio] = useState(null);
  const [pvp, setPvp] = useState(null);
  const [evebit, setEvebit] = useState(null); 
  const [pebit, setPebit] = useState(null); 
  const [vpa, setVpa] = useState(null); 
  const [pativo, setPativo] = useState(null); 
  const [lpa, setLpa] = useState(null); 
  const [psr, setPsr] = useState(null); 
  const [pcapitagiro, setPcapgiro] = useState(null); 
  const [pativocirc, setPativocirc] = useState(null); 

  useEffect(() => {
    const fetchData = async () => {
      setLoading(true);
      try {
        const [atualData, dyData, plData, pegRatioData, pvpData, evebitData, evebitdaData, pebitData, pebitdaData, vpaData, pativoData, lpaData, psrData, pcapgiroData, pativocircliqData] = await Promise.all([
          axios.get(`${API_BASE_URL}/acoes/atual/${ticker}`),
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

        // Obtendo da resposta da rota /acoes/atual/${ticker}
        setDy(isNaN(parseFloat(atualData.data.dy)) ? null : parseFloat(atualData.data.dy));
        setPl(isNaN(parseFloat(atualData.data.p_l)) ? null : parseFloat(atualData.data.p_l));
        setPegRatio(isNaN(parseFloat(atualData.data.peg_ratio)) ? null : parseFloat(atualData.data.peg_ratio));
        setPvp(isNaN(parseFloat(atualData.data.p_vp)) ? null : parseFloat(atualData.data.p_vp));
        setEvebit(isNaN(parseFloat(atualData.data.ev_ebit)) ? null : parseFloat(atualData.data.ev_ebit));
        setPebit(isNaN(parseFloat(atualData.data.p_ebit)) ? null : parseFloat(atualData.data.p_ebit));
        setVpa(isNaN(parseFloat(atualData.data.vpa)) ? null : parseFloat(atualData.data.vpa));
        setPativo(isNaN(parseFloat(atualData.data.p_ativo)) ? null : parseFloat(atualData.data.p_ativo));
        setLpa(isNaN(parseFloat(atualData.data.lpa)) ? null : parseFloat(atualData.data.lpa));
        setPsr(isNaN(parseFloat(atualData.data.p_sr)) ? null : parseFloat(atualData.data.p_sr));
        setPcapgiro(isNaN(parseFloat(atualData.data.p_capitalgiro)) ? null : parseFloat(atualData.data.p_capitalgiro));
        setPativocirc(isNaN(parseFloat(atualData.data.p_ativocirculante)) ? null : parseFloat(atualData.data.p_ativocirculante));
        
        // Atualizando o estado com os dados das outras rotas
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

  // Function to calculate the average of an array, ignoring null/undefined values
  const calculateAverage = (values) => {
    const validValues = values.filter(value => value !== null && value !== undefined && !isNaN(value));
    if (validValues.length === 0) return null;
    const sum = validValues.reduce((acc, val) => acc + parseFloat(val), 0);
    return sum / validValues.length;
  };

  // Function to get the value for the "Atual" column based on the table type
  const getCurrentValue = (tableName) => {
    switch (tableName) {
      case 'DY': return dy;
      case 'P/L': return pl;
      case 'PEG Ratio': return pegratio;
      case 'P/VP': return pvp;
      case 'EV/Ebit': return evebit;
      case 'P/Ebit': return pebit;
      case 'VPA': return vpa;
      case 'P/Ativo': return pativo;
      case 'LPA': return lpa;
      case 'P/SR': return psr;
      case 'P/Cap. Giro': return pcapitagiro;
      case 'P/Ativo Circ. Liq.': return pativocirc;
      // Adicione mais casos conforme necessário para novos itens
      default: return null;
    }
  };

  // Function to get averages for different year ranges
  const getAverages = (rowData) => {
    const values = years.map(year => parseFloat(rowData[year]));
    const averages = [
      getCurrentValue(rowData.table), // Atual column should show the appropriate value
      calculateAverage(values.slice(0, 1)), // Average for 2024 (current year)
      calculateAverage(values.slice(0, 2)), // Average for 2024-2023
      calculateAverage(values.slice(0, 5)), // Average for 2024-2020
      calculateAverage(values.slice(0, 8)), // Average for 2024-2017
      calculateAverage(values.slice(0, 10)), // Average for 2024-2015
      calculateAverage(values) // Average for all years
    ];
    return averages;
  };

  // Function to format DY values with percentage symbol
  const formatValue = (value, tableName) => {
    if (value === null || value === undefined || isNaN(value)) return '-';
    return tableName === 'DY' ? `${value.toFixed(2)}%` : value.toFixed(2);
  };

  return (
    <div style={{ display: 'flex', justifyContent: 'center' }}>
      <div style={{ width: '70%', maxWidth: '1200px' }}>
        <h2 style={{ textAlign: 'center', marginBottom: '20px' }}>Médias de Indicadores de Valuation</h2>
        <table style={{ width: '100%', borderCollapse: 'collapse' }}>
          <thead>
            <tr>
              <th style={{ padding: '8px', textAlign: 'center', minWidth: '120px', width: '100px' }}></th>
              <th style={{ padding: '4px', textAlign: 'center' }}>Atual</th>
              <th style={{ padding: '4px', textAlign: 'center' }}>2024</th>
              <th style={{ padding: '4px', textAlign: 'center' }}>2024 a 2023</th>
              <th style={{ padding: '4px', textAlign: 'center' }}>2024 a 2020</th>
              <th style={{ padding: '4px', textAlign: 'center' }}>2024 a 2017</th>
              <th style={{ padding: '4px', textAlign: 'center' }}>2024 a 2015</th>
              <th style={{ padding: '4px', textAlign: 'center' }}>Todos os Anos</th>
            </tr>
          </thead>
          <tbody>
            {data.map((row, index) => {
              const averages = getAverages(row);
              return (
                <tr key={row.table}>
                  <td style={{ padding: '4px', textAlign: 'center', fontWeight: 'bold' }}>{row.table}</td>
                  {averages.map((avg, avgIndex) => (
                    <td key={avgIndex} style={{ padding: '4px', textAlign: 'center' }}>
                      {formatValue(avg, row.table)}
                    </td>
                  ))}
                </tr>
              );
            })}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default MediasValuation;
