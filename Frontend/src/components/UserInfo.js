import React, { useState } from 'react';
import axios from 'axios';
import { useAuth } from '../contexts/AuthContext'; // Importe o hook useAuth

const UserInfo = () => {
  const { authCookie } = useAuth(); // Use o hook useAuth para acessar o cookie de autenticação
  const [userInfo, setUserInfo] = useState(null);
  const [errorMessage, setErrorMessage] = useState('');

  const fetchUserInfo = async () => {
    try {
      const response = await axios.get('http://localhost:3001/user-info', {
        headers: {
          'X-Session-Id': authCookie // Envie o cookie de autenticação no cabeçalho da requisição
        }
      });
      setUserInfo(response.data);
      setErrorMessage('');
    } catch (error) {
      setErrorMessage(error.response ? error.response.data : 'Erro ao recuperar informações do usuário');
    }
  };

  return (
    <div>
      <h2>Informações do Usuário</h2>
      <button onClick={fetchUserInfo}>Puxar Informações do Usuário</button>
      {errorMessage && <p style={{ color: 'red' }}>{errorMessage}</p>}
      {userInfo && (
        <div>
          <p>ID: {userInfo.id}</p>
          <p>Nome: {userInfo.name}</p>
          <p>Email: {userInfo.email}</p>
        </div>
      )}
    </div>
  );
};

export default UserInfo;
