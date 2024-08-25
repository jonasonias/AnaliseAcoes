import React, { useState, useEffect } from 'react';
import axios from 'axios';
import API_BASE_URL from '../../apiConfig';

const NotaPreco = ({ ticker }) => {
  const [data, setData] = useState({});
  const [precoAtual, setPrecoAtual] = useState(null);

  useEffect(() => {
    const fetchPrecoAtual = async () => {
      try {
        const response = await axios.get(`${API_BASE_URL}/acoes/atual/${ticker}`);
        setPrecoAtual(response.data.price || null);
      } catch (error) {
        console.error('Erro ao obter o preço atual da ação:', error);
      }
    };

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
          return lpa && vpa ? Math.sqrt(22.5 * lpa * vpa) : null;
        });

        const tetoBarsiData = years.map(year => {
          const provento = proventosData.data[year];
          return provento ? provento / 0.065 : null;
        });

        const precoTetoData = years.map(year => {
          const provento = proventosData.data[year];
          const taxaCrescimento = 0.03;
          const taxaRetorno = 0.08;
          return provento ? provento * (1 + taxaCrescimento) / (taxaRetorno - taxaCrescimento) : null;
        });

        const gordonData = years.map(year => {
          const provento = proventosData.data[year];
          return provento ? provento / ((0.0626 * 1.3) - 0.01) : null;
        });

        const plLpaData = years.map(year => {
          const pl = plData.data[year];
          const lpa = lpaData.data[year];
          return pl && lpa ? pl * lpa : null;
        });

        const pvpVpaData = years.map(year => {
          const pvp = pvpData.data[year];
          const vpa = vpaData.data[year];
          return pvp && vpa ? pvp * vpa : null;
        });

        setData({
          valorIntrinsecoData,
          tetoBarsiData,
          precoTetoData,
          gordonData,
          plLpaData,
          pvpVpaData
        });
      } catch (error) {
        console.error('Erro ao obter dados de múltiplos:', error);
      }
    };

    fetchPrecoAtual();
    fetchData();
  }, [ticker]);

  const calcularNota = (data) => {
    if (!data || !precoAtual) return { aprovados: 0, nulls: 0, nota: 0 };

    const totalItens = data.length;
    const nulls = data.filter(valor => valor === null).length;
    const aprovados = data.filter(valor => valor !== null && valor > precoAtual).length;
    const nota = totalItens - nulls > 0 ? aprovados / (totalItens - nulls) : 0;

    return { aprovados, nulls, nota: nota * 10 }; // Multiplica por 10 para a escala de nota
  };

  const valorIntrinseco = calcularNota(data.valorIntrinsecoData);
  const plLpa = calcularNota(data.plLpaData);
  const pvpVpa = calcularNota(data.pvpVpaData);
  const tetoBarsi = calcularNota(data.tetoBarsiData);
  const precoTeto = calcularNota(data.precoTetoData);
  const gordon = calcularNota(data.gordonData);

  // Calcula a média das notas
  const notas = [
    valorIntrinseco.nota,
    plLpa.nota,
    pvpVpa.nota,
    tetoBarsi.nota,
    precoTeto.nota,
    gordon.nota
  ];

  const mediaNotaFinal = notas.length > 0 ? notas.reduce((acc, val) => acc + val, 0) / notas.length : 0;

  return (
    <div>
      <h2 style={{ marginLeft: '30%' }}>Nota do Preço</h2>
      <table style={{ width: '110%', borderCollapse: 'collapse', margin: '0 0' }}>
        <thead>
          <tr>
            <th style={{ textAlign: 'center' }}>Indicador</th>
            <th style={{ textAlign: 'center' }}>Qtd. Aprovado</th>
            <th style={{ textAlign: 'center' }}>Qtd. Null</th>
            <th style={{ textAlign: 'center' }}>Nota</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td style={{ textAlign: 'center' }}>Valor Intrínseco</td>
            <td style={{ textAlign: 'center' }}>{valorIntrinseco.aprovados}</td>
            <td style={{ textAlign: 'center' }}>{valorIntrinseco.nulls}</td>
            <td style={{ textAlign: 'center' }}>{valorIntrinseco.nota.toFixed(2)}</td>
          </tr>
          <tr>
            <td style={{ textAlign: 'center' }}>P/E</td>
            <td style={{ textAlign: 'center' }}>{plLpa.aprovados}</td>
            <td style={{ textAlign: 'center' }}>{plLpa.nulls}</td>
            <td style={{ textAlign: 'center' }}>{plLpa.nota.toFixed(2)}</td>
          </tr>
          <tr>
            <td style={{ textAlign: 'center' }}>P/BV</td>
            <td style={{ textAlign: 'center' }}>{pvpVpa.aprovados}</td>
            <td style={{ textAlign: 'center' }}>{pvpVpa.nulls}</td>
            <td style={{ textAlign: 'center' }}>{pvpVpa.nota.toFixed(2)}</td>
          </tr>
          <tr>
            <td style={{ textAlign: 'center' }}>Teto Barsi</td>
            <td style={{ textAlign: 'center' }}>{tetoBarsi.aprovados}</td>
            <td style={{ textAlign: 'center' }}>{tetoBarsi.nulls}</td>
            <td style={{ textAlign: 'center' }}>{tetoBarsi.nota.toFixed(2)}</td>
          </tr>
          <tr>
            <td style={{ textAlign: 'center' }}>Teto GPT</td>
            <td style={{ textAlign: 'center' }}>{precoTeto.aprovados}</td>
            <td style={{ textAlign: 'center' }}>{precoTeto.nulls}</td>
            <td style={{ textAlign: 'center' }}>{precoTeto.nota.toFixed(2)}</td>
          </tr>
          <tr>
            <td style={{ textAlign: 'center' }}>Gordon</td>
            <td style={{ textAlign: 'center' }}>{gordon.aprovados}</td>
            <td style={{ textAlign: 'center' }}>{gordon.nulls}</td>
            <td style={{ textAlign: 'center' }}>{gordon.nota.toFixed(2)}</td>
          </tr>
        </tbody>
      </table>
      <div style={{ textAlign: 'center', marginTop: '22px', marginLeft: '30%' }}>
        <strong>Média das Notas: {mediaNotaFinal.toFixed(2)}</strong>
      </div>
    </div>
  );
};

export default NotaPreco;
