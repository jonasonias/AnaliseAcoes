// src/components/Logout.js
import React, { useState } from 'react';
import axios from 'axios';
import { useAuth } from '../../contexts/AuthContext';
import API_BASE_URL from '../../apiConfig';
import CustomAlert from '../CustomAlert'; // Importe o componente CustomAlert

const Logout = ({ onLogout }) => {
  const { authCookie, setAuthCookie, setUserInfo } = useAuth();
  const [errorMessage, setErrorMessage] = useState('');
  const [successMessage, setSuccessMessage] = useState('');

  const handleLogout = async () => {
    try {
      await axios.post(`${API_BASE_URL}/logout`, {}, {
        headers: {
          'X-Session-Id': authCookie,
        },
      });
      setAuthCookie(null);
      setUserInfo(null);
      setSuccessMessage('Logout bem-sucedido');
      setErrorMessage('');
      onLogout(); // Chama a função de callback para atualizar o estado de logout
    } catch (error) {
      setErrorMessage(error.response ? error.response.data : 'Erro ao fazer logout');
      setSuccessMessage('');
    }
  };

  return (
    <div>
      <h2>Logout</h2>
      {errorMessage && <CustomAlert message={errorMessage} type="error" />}
      {successMessage && <CustomAlert message={successMessage} type="success" />}
      <button onClick={handleLogout}>Logout</button>
    </div>
  );
};

export default Logout;