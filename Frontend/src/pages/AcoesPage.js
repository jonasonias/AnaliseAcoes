import React from 'react';
import GetAllAcoes from '../components/Acoes/GetAllAcoes';
import GetAcao from '../components/Acoes/GetAcao';
import AddAcao from '../components/Acoes/AddAcao';
import UpdateAcao from '../components/Acoes/UpdateAcao';
import DeleteAcao from '../components/Acoes/DeleteAcao';

const AcoesPage = () => {
  return (
    <div className="page-container">
      <h1>Ações</h1>
      <p>Bem-vindo à página de ações. Aqui você pode listar, buscar, adicionar, atualizar e deletar ações.</p>
      
      <h2>Listar Todas as Ações</h2>
      <GetAllAcoes />

      <h2>Buscar Ação Específica</h2>
      <GetAcao />

      <h2>Adicionar Nova Ação</h2>
      <AddAcao />

      <h2>Atualizar Ação Existente</h2>
      <UpdateAcao />

      <h2>Deletar Ação</h2>
      <DeleteAcao />
    </div>
  );
};

export default AcoesPage;
