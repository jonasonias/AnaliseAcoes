import React from 'react';
import GetAllAcoes from '../components/Acoes/GetAllAcoes';

const AcoesPage = () => {
  return (
    <div className="page-container">
      <h1>Ações</h1>
      <p>Bem-vindo à página de ações. Aqui você pode listar, buscar, adicionar, atualizar e deletar ações.</p>
      
      <h2>Listar Todas as Ações</h2>
      <GetAllAcoes />

    </div>
  );
};

export default AcoesPage;
