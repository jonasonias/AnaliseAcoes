import React, { useState, useEffect } from 'react';
import axios from 'axios';
import API_BASE_URL from '../../apiConfig';

const MediasRentabilidade = ({ ticker }) => {
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // Estados para armazenar os valores atuais
  const [roe, setRoe] = useState(null);
  const [roa, setRoa] = useState(null);
  const [roic, setRoic] = useState(null);
  const [giroativos, setGiroativos] = useState(null);
  
  useEffect(() => {
    const fetchData = async () => {
      setLoading(true);
      try {
        const [atualData, roeData, roaData, roicData, giroativosData] = await Promise.all([
          axios.get(`${API_BASE_URL}/acoes/atual/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/roe/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/roa/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/roic/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/giro_ativos/${ticker}`)
        ]);

        // Obtendo valores atuais da rota /acoes/atual/${ticker}
        setRoe(isNaN(parseFloat(atualData.data.roe)) ? null : parseFloat(atualData.data.roe));
        setRoa(isNaN(parseFloat(atualData.data.roa)) ? null : parseFloat(atualData.data.roa));
        setRoic(isNaN(parseFloat(atualData.data.roic)) ? null : parseFloat(atualData.data.roic));
        setGiroativos(isNaN(parseFloat(atualData.data.giroativos)) ? null : parseFloat(atualData.data.giroativos));

        // Atualizando o estado com os dados das outras rotas
        setData([
          { table: 'ROE', ...roeData.data },
          { table: 'ROA', ...roaData.data },
          { table: 'ROIC', ...roicData.data },
          { table: 'Giro Ativos', ...giroativosData.data },
        ]);

        setLoading(false);
      } catch (err) {
        setError('Erro ao obter dados de Rentabilidade');
        setLoading(false);
      }
    };

    fetchData();
  }, [ticker]);

  if (loading) return <p>Carregando...</p>;
  if (error) return <div><h3 style={{ textAlign: 'center', marginBottom: '20px' }}>{error}</h3></div>;

  // Anos para exibição das colunas
  const years = Array.from({ length: 17 }, (_, i) => (2024 - i).toString());

  // Função para calcular a média dos valores ignorando valores nulos ou indefinidos
  const calculateAverage = (values) => {
    const validValues = values.filter(value => value !== null && value !== undefined && !isNaN(value));
    if (validValues.length === 0) return null;
    const sum = validValues.reduce((acc, val) => acc + parseFloat(val), 0);
    return sum / validValues.length;
  };

  // Função para obter o valor "Atual" com base no tipo de tabela
  const getCurrentValue = (tableName) => {
    switch (tableName) {
      case 'ROE': return roe;
      case 'ROA': return roa;
      case 'ROIC': return roic;
      case 'Giro Ativos': return giroativos;
      default: return null;
    }
  };

  // Função para obter as médias para diferentes intervalos de anos
  const getAverages = (rowData) => {
    const values = years.map(year => parseFloat(rowData[year]));
    const averages = [
      getCurrentValue(rowData.table), // Atual
      calculateAverage(values.slice(0, 1)), // 2024
      calculateAverage(values.slice(0, 2)), // 2024 a 2023
      calculateAverage(values.slice(0, 5)), // 2024 a 2020
      calculateAverage(values.slice(0, 8)), // 2024 a 2017
      calculateAverage(values.slice(0, 10)), // 2024 a 2015
      calculateAverage(values) // Todos os anos
    ];
    return averages;
  };

  // Função para formatar valores como porcentagens, exceto para "Giro Ativos"
  const formatValue = (value, tableName) => {
    return tableName === 'Giro Ativos'
      ? value !== null && value !== undefined && !isNaN(value) ? value.toFixed(2) : '-'
      : value !== null && value !== undefined && !isNaN(value) ? `${value.toFixed(2)}%` : '-';
  };

  return (
    <div style={{ display: 'flex', justifyContent: 'center' }}>
      <div style={{ width: '70%', maxWidth: '1200px' }}>
        <h2 style={{ textAlign: 'center', marginBottom: '20px' }}>Médias de Indicadores de Rentabilidade</h2>
        <table style={{ width: '100%', borderCollapse: 'collapse' }}>
          <thead>
            <tr>
              <th style={{ padding: '8px', textAlign: 'center', minWidth: '120px', width: '140px' }}></th>
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
            {data.map((row) => {
              const averages = getAverages(row);
              return (
                <tr key={row.table}>
                  <td style={{ padding: '4px', textAlign: 'center', fontWeight: 'bold' }}>{row.table}</td>
                  {averages.map((avg, index) => (
                    <td key={index} style={{ padding: '4px', textAlign: 'center' }}>
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

export default MediasRentabilidade;
