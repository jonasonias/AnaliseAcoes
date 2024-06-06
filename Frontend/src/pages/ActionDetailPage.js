// src/pages/ActionDetailPage.js

import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';
import axios from 'axios';

const ActionDetailPage = () => {
  const { code } = useParams();
  const [action, setAction] = useState(null);

  useEffect(() => {
    const fetchAction = async () => {
      try {
        const response = await axios.get(`/acoes/${code}`);
        setAction(response.data);
      } catch (error) {
        console.error('Erro ao obter ação:', error);
      }
    };

    fetchAction();
  }, [code]);

  if (!action) {
    return <p className="page-container">Carregando...</p>;
  }

  return (
    <div className="page-container">
      <h1>{action.name}</h1>
      <p>Código: {action.code}</p>
      <p>Preço: {action.price}</p>
    </div>
  );
};

export default ActionDetailPage;