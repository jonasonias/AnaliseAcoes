import React from 'react';
import { useParams } from 'react-router-dom';
import GetAcao from '../components/Acoes/GetAcao'; // Importe o componente GetAcao

const AcoesDetailPage = () => {
  const { code } = useParams(); // Obtém o parâmetro 'code' da URL

  return (
    <div className="page-container">
      <h1>Detalhes da Ação</h1>
      <GetAcao code={code} />
    </div>
  );
};

export default AcoesDetailPage;