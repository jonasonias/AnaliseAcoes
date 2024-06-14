// src/components/UserInfo.js
import React, { useState, useEffect, useCallback } from 'react';
import axios from 'axios';
import { useAuth } from '../../contexts/AuthContext';
import API_BASE_URL from '../../apiConfig';

const UserInfo = ({ isLoggedOut }) => {
  const { authCookie, setUserInfo } = useAuth();
  const [userInfoLocal, setUserInfoLocal] = useState(null);
  const [errorMessage, setErrorMessage] = useState('');

  const fetchUserInfo = useCallback(async () => {
    try {
      const response = await axios.get(`${API_BASE_URL}/user/userinfo`, {
        headers: {
          'X-Session-Id': authCookie
        }
      });
      setUserInfoLocal(response.data);
      setUserInfo(response.data); // Atualiza o contexto com as informações do usuário
      setErrorMessage('');
    } catch (error) {
      setErrorMessage(error.response ? error.response.data : 'Erro ao recuperar informações do usuário');
    }
  }, [authCookie, setUserInfo]);

  useEffect(() => {
    if (authCookie) {
      fetchUserInfo();
    } else {
      setErrorMessage('Necessário Logar para acessar');
    }
  }, [authCookie, fetchUserInfo]);

  return (
    <div>
      <h2>Informações do Usuário</h2>
      {errorMessage && <p style={{ color: 'red' }}>{errorMessage}</p>}
      {isLoggedOut ? (
        <p style={{ color: 'green' }}>Logout bem-sucedido</p>
      ) : (
        userInfoLocal && (
          <div>
            <p>ID: {userInfoLocal.id}</p>
            <p>Nome: {userInfoLocal.name}</p>
            <p>Email: {userInfoLocal.email}</p>
          </div>
        )
      )}
    </div>
  );
};

export default UserInfo;