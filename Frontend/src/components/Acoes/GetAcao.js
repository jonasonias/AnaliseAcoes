import React, { useState, useEffect } from 'react';
import axios from 'axios';
import API_BASE_URL from '../../apiConfig';
import { FaTools } from 'react-icons/fa';

const GetAcao = ({ code }) => {
  const [acao, setAcao] = useState(null);
  const [valorMercado, setValorMercado] = useState(null);
  const [liquidezmediadiaria, setliquidezmediadiaria] = useState(null);
  const [price, setPrice] = useState(null);
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
        if (response.data) {
          setValorMercado(response.data.valormercado || null);
          setliquidezmediadiaria(response.data.liquidezmediadiaria || null);
          setPrice(response.data.price || null);
        } else {
          setValorMercado(null);
          setliquidezmediadiaria(null);
          setPrice(null);
        }
      } catch (error) {
        console.error('Erro ao obter valor de mercado:', error);
        setValorMercado(null);
        setliquidezmediadiaria(null);
        setPrice(null);
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
    <div style={{ display: 'flex', justifyContent: 'center' }}>
      {acao ? (
        <table style={{ border: 'none', width: '100%' }}>
          <tbody>
            <tr>
              <td>
                <div style={{ position: 'relative' }}>
                  <strong>Ticker:</strong> {acao.ticker}
                  <div style={{ 
                    position: 'absolute', 
                    top: '40px', 
                    left: '550px', 
                    fontSize: '30px', 
                    fontWeight: 'bold' 
                  }}>
                     {price ? formatNumber(price) : 'N/A'}
                     <div style={{textAlign: 'center', fontSize: '12px', fontStyle: 'italic', fontWeight: 'normal'}}>16/09/2024</div>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td><strong>Nome:</strong> {acao.nome}</td>
            </tr>
            <tr>
              <td><strong>Setor:</strong> {acao.setor}</td>
            </tr>
            <tr>
              <td><strong>Subsetor:</strong> {acao.subsetor}</td>
            </tr>
            <tr>
              <td><strong>Segmento:</strong> {acao.segmento}</td>
            </tr>
            <tr>
              <td><strong>Valor de Mercado:</strong> {valorMercado ? formatNumber(valorMercado) : 'N/A'}</td>
            </tr>
            <tr>
              <td><strong>Liquidez Média Diária:</strong> {liquidezmediadiaria ? formatNumber(liquidezmediadiaria) : 'N/A'}</td>
            </tr>
          </tbody>
        </table>
      ) : (
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
