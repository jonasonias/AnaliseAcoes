import React from 'react';
import { useParams } from 'react-router-dom';
import GetAcao from '../components/Acoes/GetAcao';
import DY from '../components/Multiplos/DY';
import PL from '../components/Multiplos/PL';

const AcoesDetailPage = () => {
  const { code } = useParams(); // Obtém o parâmetro 'code' da URL

  return (
    <div className="page-container">
      <h1>Detalhes da Ação</h1>
      <GetAcao code={code} />

      <h2>Histórico Múltiplos</h2>
      <DY ticker={code} />
      
      <PL ticker={code} /> 

    </div>
  );
};

export default AcoesDetailPage;
