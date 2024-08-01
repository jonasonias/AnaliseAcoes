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
import MediasEndividamento from '../components/Medias/MediasEndividamento';
import MediasEficiencia from '../components/Medias/MediasEficiencia';
import MediasRentabilidade from '../components/Medias/MediasRentabilidade';
import MediasCrescimento from '../components/Medias/MediasCrescimento';
import NotaValuation from '../components/Notas/NotaValuation';
import NotaEndividamento from '../components/Notas/NotaEndividamento';
import NotaEficiencia from '../components/Notas/NotaEficiencia';
import NotaRentabilidade from '../components/Notas/NotaRentabilidade';
import NotaCrescimento from '../components/Notas/NotaCrescimento';

const AcoesDetailPage = () => {
  const { code } = useParams(); // Obtém o parâmetro 'code' da URL
  const [view, setView] = useState('historico'); // 'historico', 'analise', ou 'nota'

  return (
    <div className="page-container">
      <h1>Detalhes da Ação</h1>
      <GetAcao code={code} />

      <div style={{ display: 'flex', justifyContent: 'center', marginBottom: '20px' }}>
        <button onClick={() => setView('historico')} style={{ marginRight: '10px' }}>Ver Histórico</button>
        <button onClick={() => setView('analise')} style={{ marginRight: '10px' }}>Ver Análise</button>
        <button onClick={() => setView('nota')}>Ver Nota</button>
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
      ) : view === 'analise' ? (
        <>
          <MediasValuation ticker={code} />
          <MediasEndividamento ticker={code} />
          <MediasEficiencia ticker={code} />
          <MediasRentabilidade ticker={code} />
          <MediasCrescimento ticker={code} />
          <AnaliseAcao ticker={code} />
        </>
      ) : (
        <div>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start' }}>
            <div style={{ flex: 3, minWidth: '300px', maxWidth: '45%', display: 'flex', justifyContent: 'left' }}>
              <NotaValuation ticker={code} />
            </div>
            <div style={{ flex: 3, minWidth: '300px', maxWidth: '45%', display: 'flex', justifyContent: 'left' }}>
              <NotaEndividamento ticker={code} />
            </div>
            <div style={{ flex: 3, minWidth: '300px', maxWidth: '45%', display: 'flex', justifyContent: 'center' }}>
              <NotaEficiencia ticker={code} />
            </div>
          </div>
          <div style={{ marginTop: '20px', display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start' }}>
            <div style={{ flex: 3, minWidth: '300px', maxWidth: '45%', display: 'flex', justifyContent: 'left' }}>
              <NotaRentabilidade ticker={code} />
            </div>
            <div style={{ flex: 3, minWidth: '300px', maxWidth: '45%', display: 'flex', justifyContent: 'left' }}>
              <NotaCrescimento ticker={code} />
            </div>
            <div style={{ flex: 3, minWidth: '300px', maxWidth: '45%', display: 'flex', justifyContent: 'center' }}>
              <NotaEficiencia ticker={code} />
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default AcoesDetailPage;
