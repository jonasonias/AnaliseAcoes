import React, { useState, useEffect } from 'react';
import axios from 'axios';
import API_BASE_URL from '../../apiConfig';
import { Tooltip } from 'react-tooltip';

const AnaliseAcao = ({ ticker }) => {
  const [data, setData] = useState([]);
  const [proventos, setProventos] = useState([]);
  const [precoTeto, setPrecoTeto] = useState([]);
  const [gordonData, setGordonData] = useState([]);
  const [plLpaData, setPlLpaData] = useState([]);
  const [pvpVpaData, setPvpVpaData] = useState([]);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const [lpaData, vpaData, proventosData, plData, pvpData] = await Promise.all([
          axios.get(`${API_BASE_URL}/multiplos/lpa/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/vpa/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/proventos/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/pl/${ticker}`),
          axios.get(`${API_BASE_URL}/multiplos/pvp/${ticker}`)
        ]);

        const years = Array.from({ length: 17 }, (_, i) => (2024 - i).toString());

        const valorIntrinsecoData = years.map(year => {
          const lpa = lpaData.data[year];
          const vpa = vpaData.data[year];
          if (lpa !== undefined && vpa !== undefined && lpa !== null && vpa !== null) {
            const valorIntrinseco = Math.sqrt(22.5 * lpa * vpa);
            return { year, valorIntrinseco: isNaN(valorIntrinseco) ? null : valorIntrinseco };
          } else {
            return { year, valorIntrinseco: null };
          }
        });

        const tetoBarsiData = years.map(year => {
          const provento = proventosData.data[year];
          const tetoBarsi = provento !== undefined && provento !== null ? provento / 0.065 : null;
          return { year, tetoBarsi };
        });

        // Cálculo do Preço Teto usando a fórmula com taxa de crescimento de 3% e taxa de retorno de 8%
        const taxaCrescimento = 0.03;
        const taxaRetorno = 0.08;

        const precoTetoData = years.map(year => {
          const provento = proventosData.data[year];
          const precoTeto = provento !== undefined && provento !== null 
            ? provento * (1 + taxaCrescimento) / (taxaRetorno - taxaCrescimento)
            : null;
          return { year, precoTeto };
        });

        // Cálculo da fórmula Gordon: (Proventos / ((0,0626 * 1,3) - 0,01))
        const gordonData = years.map(year => {
          const provento = proventosData.data[year];
          const gordon = provento !== undefined && provento !== null
            ? provento / ((0.0626 * 1.3) - 0.01)
            : null;
          return { year, gordon };
        });

        // Cálculo do P/L * LPA
        const plLpaData = years.map(year => {
          const pl = plData.data[year];
          const lpa = lpaData.data[year];
          if (pl !== undefined && lpa !== undefined && pl !== null && lpa !== null) {
            const plLpa = pl * lpa;
            return { year, plLpa: isNaN(plLpa) ? null : plLpa };
          } else {
            return { year, plLpa: null };
          }
        });

        // Cálculo do P/VP * VPA
        const pvpVpaData = years.map(year => {
          const pvp = pvpData.data[year];
          const vpa = vpaData.data[year];
          if (pvp !== undefined && vpa !== undefined && pvp !== null && vpa !== null) {
            const pvpVpa = pvp * vpa;
            return { year, pvpVpa: isNaN(pvpVpa) ? null : pvpVpa };
          } else {
            return { year, pvpVpa: null };
          }
        });

        setData(valorIntrinsecoData);
        setProventos(tetoBarsiData);
        setPrecoTeto(precoTetoData);
        setGordonData(gordonData);
        setPlLpaData(plLpaData);
        setPvpVpaData(pvpVpaData);
      } catch (err) {
        setError('Erro ao obter dados');
      }
    };

    fetchData();
  }, [ticker]);

  const formatCurrency = (number) => {
    return new Intl.NumberFormat('pt-BR', {
      style: 'currency',
      currency: 'BRL',
      minimumFractionDigits: 2,
    }).format(number);
  };

  return (
    <div style={{ paddingLeft: '0px', marginLeft: '0px', overflowX: 'auto' }}>
      <h2 style={{ textAlign: 'center', marginBottom: '20px' }}>Análise de Preço</h2>
      {error ? (
        <p>{error}</p>
      ) : (
        <table style={{ width: '100%', borderCollapse: 'collapse' }}>
          <thead>
            <tr>
              <th style={{ padding: '8px', textAlign: 'center' }}></th>
              {data.map(row => (
                <th key={row.year} style={{ padding: '8px', textAlign: 'center' }}>{row.year}</th>
              ))}
            </tr>
          </thead>
          <tbody>
            <tr>
              <td data-tooltip-id="tooltip" data-tooltip-content="Valor Intrínseco = √(22.5 * LPA * VPA)" style={{ padding: '8px', textAlign: 'center', minWidth: '70px', fontSize: '0.9rem' }}><strong>Valor Intrínseco</strong></td>
              {data.map(row => (
                <td key={row.year} style={{ padding: '8px', textAlign: 'center', fontSize: '0.8rem' }}>
                  {row.valorIntrinseco !== null ? formatCurrency(row.valorIntrinseco) : '-'}
                </td>
              ))}
            </tr>
            <tr>
              <td data-tooltip-id="tooltip" data-tooltip-content="P/E = PL * LPA" style={{ padding: '8px', textAlign: 'center', minWidth: '70px', fontSize: '0.9rem' }}><strong>P/E</strong></td>
              {plLpaData.map(row => (
                <td key={row.year} style={{ padding: '8px', textAlign: 'center', fontSize: '0.8rem' }}>
                  {row.plLpa !== null ? formatCurrency(row.plLpa) : '-'}
                </td>
              ))}
            </tr>
            <tr>
              <td data-tooltip-id="tooltip" data-tooltip-content="P/BV = PVP * VPA" style={{ padding: '8px', textAlign: 'center', minWidth: '70px', fontSize: '0.9rem' }}><strong>P/BV</strong></td>
              {pvpVpaData.map(row => (
                <td key={row.year} style={{ padding: '8px', textAlign: 'center', fontSize: '0.8rem' }}>
                  {row.pvpVpa !== null ? formatCurrency(row.pvpVpa) : '-'}
                </td>
              ))}
            </tr>
            <tr>
              <td data-tooltip-id="tooltip" data-tooltip-content="Teto Barsi = Proventos / 0.065" style={{ padding: '8px', textAlign: 'center', minWidth: '70px', fontSize: '0.9rem' }}><strong>Teto Barsi</strong></td>
              {proventos.map(row => (
                <td key={row.year} style={{ padding: '8px', textAlign: 'center', fontSize: '0.8rem' }}>
                  {row.tetoBarsi !== null ? formatCurrency(row.tetoBarsi) : '-'}
                </td>
              ))}
            </tr>
            <tr>
              <td data-tooltip-id="tooltip" data-tooltip-content="Teto GPT = Proventos * (1 + Taxa Crescimento) / (Taxa de Retorno - Taxa de Crescimento)" style={{ padding: '8px', textAlign: 'center', minWidth: '70px', fontSize: '0.9rem' }}><strong>Teto GPT</strong></td>
              {precoTeto.map(row => (
                <td key={row.year} style={{ padding: '8px', textAlign: 'center', fontSize: '0.8rem' }}>
                  {row.precoTeto !== null ? formatCurrency(row.precoTeto) : '-'}
                </td>
              ))}
            </tr>
            <tr>
              <td data-tooltip-id="tooltip" data-tooltip-content="Gordon = Proventos / ((0.0626 * 1.3) - 0.01)" style={{ padding: '8px', textAlign: 'center', minWidth: '70px', fontSize: '0.9rem' }}><strong>Gordon</strong></td>
              {gordonData.map(row => (
                <td key={row.year} style={{ padding: '8px', textAlign: 'center', fontSize: '0.8rem' }}>
                  {row.gordon !== null ? formatCurrency(row.gordon) : '-'}
                </td>
              ))}
            </tr>
          </tbody>
        </table>
      )}
      <Tooltip id="tooltip" />
    </div>
  );
};

export default AnaliseAcao;
