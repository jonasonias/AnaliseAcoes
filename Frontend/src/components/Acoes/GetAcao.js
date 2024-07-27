import React, { useState, useEffect } from 'react';
import axios from 'axios';
import API_BASE_URL from '../../apiConfig';
import { FaTools } from 'react-icons/fa';

const GetAcao = ({ code }) => {
  const [acao, setAcao] = useState(null);
  const [valorMercado, setValorMercado] = useState(null);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchAcao = async () => {
      try {
        const response = await axios.get(`${API_BASE_URL}/acoes/setores/${code}`);
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

    const fetchValorMercado = async () => {
      try {
        const response = await axios.get(`${API_BASE_URL}/acoes/atual/${code}`);
        if (response.data && response.data.valormercado) {
          setValorMercado(response.data.valormercado);
        } else {
          setValorMercado(null);
        }
      } catch (error) {
        console.error('Erro ao obter valor de mercado:', error);
        setValorMercado(null);
      }
    };

    fetchAcao();
    fetchValorMercado();
  }, [code]);

  const formatNumber = (number) => {
    return new Intl.NumberFormat('pt-BR', {
      style: 'currency',
      currency: 'BRL',
      minimumFractionDigits: 2,
    }).format(number);
  };

  return (
    <div>
      {acao && (
        <div>
          <p><strong>Ticker:</strong> {acao.ticker}</p>
          <p><strong>Nome:</strong> {acao.nome}</p>
          <p><strong>Setor:</strong> {acao.setor}</p>
          <p><strong>Subsetor:</strong> {acao.subsetor}</p>
          <p><strong>Segmento:</strong> {acao.segmento}</p>
          <p><strong>Valor de Mercado:</strong> {valorMercado ? formatNumber(valorMercado) : 'N/A'}</p>
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
