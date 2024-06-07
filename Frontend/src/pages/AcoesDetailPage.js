import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';
import axios from 'axios';
import { FaTools } from 'react-icons/fa'; // Importe o ícone FaTools do Font Awesome

const ActionDetailPage = () => {
  const { code } = useParams();
  const [action, setAction] = useState(null);

  useEffect(() => {
    const fetchAction = async () => {
      try {
        const response = await axios.get(`http://localhost:3001/acoes/${code}`);
        setAction(response.data);
      } catch (error) {
        console.error('Erro ao obter ação:', error);
      }
    };

    fetchAction();
  }, [code]);

  const formatCurrency = (value) => {
    return value.toLocaleString('pt-BR', {
      style: 'currency',
      currency: 'BRL',
    });
  };

  if (!action) {
    return (
      <div className="page-container">
        <h1>Detalhes da Ação</h1>
        <p>This is the Ações Detailed page content.</p>
        <div style={{ textAlign: 'center' }}>
          <p style={{ color: 'black', fontWeight: 'bold' }}>
            <FaTools style={{ marginTop: '10%' }} /> Em desenvolvimento.
          </p>
        </div>
      </div>
    );
  }

  return (
    <div className="page-container">
      <h1>Detalhes da Ação</h1>
      <p><strong>Ticker:</strong> {action.ticker}</p>
      <p><strong>Nome:</strong> {action.nome}</p>
      <p><strong>Setor de Atuação:</strong> {action.setorDeAtuacao}</p>
      <p><strong>Subsetor de Atuação:</strong> {action.subsetorDeAtuacao}</p>
      <p><strong>Segmento de Atuação:</strong> {action.segmentoDeAtuacao}</p>
      <p><strong>Valor de Mercado:</strong> {formatCurrency(action.valorDeMercado)}</p>
    </div>
  );
};

export default ActionDetailPage;