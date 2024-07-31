import React, { useState, useEffect } from 'react';
import axios from 'axios';
import API_BASE_URL from '../../apiConfig';

const NotaEndividamento = ({ ticker }) => {
  const [data, setData] = useState([]);
  const [mediaNota, setMediaNota] = useState(0);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get(`${API_BASE_URL}/acoes/nota/endividamento/${ticker}`);
        const newData = response.data.map(item => {
          const nota = (item.count_limite * 10) / (35 - item.count_null);
          return { ...item, nota: isNaN(nota) ? 0 : nota }; // Tratar NaN como 0
        });

        // Considerar todas as notas, incluindo zeros, mas excluindo NaN
        const totalNotas = newData.reduce((sum, item) => sum + (isNaN(item.nota) ? 0 : item.nota), 0);
        const media = totalNotas / newData.length;
        
        setData(newData);
        setMediaNota(isNaN(media) ? 0 : media); // Tratar média NaN como 0
      } catch (error) {
        console.error('Erro ao buscar dados da API:', error);
      }
    };

    fetchData();
  }, [ticker]);

  return (
    <div>
      <h2 style={{ marginLeft: '30%' }}>Nota de Endividamento</h2>
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
          {data.map((item, index) => (
            <tr key={index}>
              <td style={{ textAlign: 'center' }}>{item.indicador}</td>
              <td style={{ textAlign: 'center' }}>{item.count_limite}</td>
              <td style={{ textAlign: 'center' }}>{item.count_null}</td>
              <td style={{ textAlign: 'center' }}>{item.nota.toFixed(2)}</td>
            </tr>
          ))}
        </tbody>
      </table>
      <div style={{ textAlign: 'center', marginTop: '22px', marginLeft: '30%' }}>
        <strong>Média das Notas: {mediaNota.toFixed(2)}</strong>
      </div>
    </div>
  );
};

export default NotaEndividamento;
