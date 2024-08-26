import React from 'react';
import NotaAcoes from '../components/Acoes/NotaAcoes';

const AcoesNotaPage = () => {
  return (
    <div className="page-container">
      <h1>Ações Notas</h1>
      <p>Bem-vindo à página de ações. Aqui você pode listar, buscar, adicionar, atualizar e deletar ações.</p>

      <NotaAcoes />

    </div>
  );
};

export default AcoesNotaPage;
