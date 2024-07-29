import React, { useState } from 'react';
import { useParams } from 'react-router-dom';
import GetAcao from '../components/Acoes/GetAcao';
import HistoricoValuation from '../components/Multiplos/HistoricoValuation';
import HistoricoEndividamento from '../components/Multiplos/HistoricoEndividamento';
import HistoricoEficiencia from '../components/Multiplos/HistoricoEficiencia';
import HistoricoRentabilidade from '../components/Multiplos/HistoricoRentabilidade';
import HistoricoCrescimento from '../components/Multiplos/HistoricoCrescimento';
import HistoricoProventos from '../components/Multiplos/HistoricoProventos';
import AnaliseAcao from '../components/Acoes/AnaliseAcao';
import MediasValuation from '../components/Medias/MediasValuation';

const AcoesDetailPage = () => {
  const { code } = useParams(); // Obtém o parâmetro 'code' da URL
  const [view, setView] = useState('historico'); // 'historico' or 'analise'

  return (
    <div className="page-container">
      <h1>Detalhes da Ação</h1>
      <GetAcao code={code} />

      <div style={{ display: 'flex', justifyContent: 'center', marginBottom: '20px' }}>
        <button onClick={() => setView('historico')} style={{ marginRight: '10px' }}>Ver Histórico</button>
        <button onClick={() => setView('analise')}>Ver Análise</button>
      </div>

      {view === 'historico' ? (
        <>
          <HistoricoValuation ticker={code} />
          <HistoricoEndividamento ticker={code} />
          <HistoricoEficiencia ticker={code} />
          <HistoricoRentabilidade ticker={code} />
          <HistoricoCrescimento ticker={code} />
          <HistoricoProventos ticker={code} />
        </>
      ) : (
        <>
          <AnaliseAcao ticker={code} />
          <MediasValuation ticker={code} />
        </>
        
      )}
    </div>
  );
};

export default AcoesDetailPage;
