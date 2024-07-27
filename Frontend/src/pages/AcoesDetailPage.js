import React from 'react';
import { useParams } from 'react-router-dom';
import GetAcao from '../components/Acoes/GetAcao';
import HistoricoValuation from '../components/Multiplos/HistoricoValuation';
import HistoricoEndividamento from '../components/Multiplos/HistoricoEndividamento';
import HistoricoEficiencia from '../components/Multiplos/HistoricoEficiencia';
import HistoricoRentabilidade from '../components/Multiplos/HistoricoRentabilidade';
import HistoricoCrescimento from '../components/Multiplos/HistoricoCrescimento';

const AcoesDetailPage = () => {
  const { code } = useParams(); // Obtém o parâmetro 'code' da URL

  return (
    <div className="page-container">
      <h1>Detalhes da Ação</h1>
      <GetAcao code={code} />

      <HistoricoValuation ticker={code} />

      <HistoricoEndividamento ticker={code} />

      <HistoricoEficiencia ticker={code} />

      <HistoricoRentabilidade ticker={code} />

      <HistoricoCrescimento ticker={code} />

    </div>
  );
};

export default AcoesDetailPage;
