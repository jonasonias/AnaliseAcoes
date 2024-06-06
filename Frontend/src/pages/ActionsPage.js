import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import axios from 'axios';

const ActionsPage = () => {
  const [actions, setActions] = useState([]);
  const [showActions, setShowActions] = useState(false);
  const [newAction, setNewAction] = useState({ code: '', name: '', price: '' });
  const [message, setMessage] = useState('');

  const fetchActions = async () => {
    try {
      const response = await axios.get('http://localhost:3001/acoes');
      setActions(response.data);
      setShowActions(true);
    } catch (error) {
      console.error('Erro ao obter ações:', error);
    }
  };

  const handleChange = (e) => {
    const { name, value } = e.target;
    setNewAction(prevState => ({
      ...prevState,
      [name]: value
    }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      await axios.post('http://localhost:3001/acoes', newAction);
      setMessage('Ação adicionada com sucesso');
      fetchActions(); // Atualiza a lista de ações após a adição
    } catch (error) {
      console.error('Erro ao adicionar ação:', error);
      setMessage('Erro ao adicionar ação');
    }
  };

  return (
    <div className="page-container">
      <h1>Ações</h1>
      <button onClick={fetchActions}>Mostrar Ações</button>
      {showActions && (
        <ul>
          {actions.map(action => (
            <li key={action.code}>
              <Link to={`/acoes/${action.code}`}>
                {action.name} - {action.code} - R${action.price != null ? action.price.toFixed(2) : 'Preço indisponível'}
              </Link>
            </li>
          ))}
        </ul>
      )}
      <h2>Adicionar Nova Ação</h2>
      <form onSubmit={handleSubmit}>
        <div>
          <label>Código:</label>
          <input type="text" name="code" value={newAction.code} onChange={handleChange} required />
        </div>
        <div>
          <label>Nome:</label>
          <input type="text" name="name" value={newAction.name} onChange={handleChange} required />
        </div>
        <div>
          <label>Preço:</label>
          <input type="number" step="0.01" name="price" value={newAction.price} onChange={handleChange} required />
        </div>
        <button type="submit">Adicionar Ação</button>
      </form>
      {message && <p>{message}</p>}
    </div>
  );
};

export default ActionsPage;