import React, { useState, useEffect } from 'react';
import axios from 'axios';
import API_BASE_URL from '../../apiConfig';
import { FaTools } from 'react-icons/fa';

const GetAcao = ({ code }) => {
  const [acao, setAcao] = useState(null);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchAcao = async () => {
      try {
        const response = await axios.get(`${API_BASE_URL}/acoes/${code}`);
        if (response.data) {
          setAcao(response.data);
          setError(null);
        } else {
          setError('Ação não encontrada');
          setAcao(null);
        }
      } catch (error) {
        console.error('Erro ao obter ação:', error);
        setError('Ação não encontrada');
        setAcao(null);
      }
    };

    fetchAcao();
  }, [code]);

  return (
    <div>
      {acao && (
        <div>
          <p><strong>Ticker:</strong> {acao.ticker}</p>
          <p><strong>Nome:</strong> {acao.nome}</p>
          <p><strong>Setor:</strong> {acao.setor}</p>
          <p><strong>Subsetor:</strong> {acao.subsetor}</p>
          <p><strong>Segmento:</strong> {acao.segmento}</p>
        </div>
      )}
      {error && (
        <div style={{ textAlign: 'center' }}>
          <p style={{ color: 'black', fontWeight: 'bold' }}>
            <FaTools style={{ marginTop: '10%' }} /> {error}
          </p>
        </div>
      )}
    </div>
  );
};

export default GetAcao;
