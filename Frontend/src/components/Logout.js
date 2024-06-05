import React, { useState } from 'react';
import axios from 'axios';
import { useAuth } from '../contexts/AuthContext'; 
import API_BASE_URL from '../apiConfig';

const Logout = ({ onLogout }) => {
  const { authCookie, setAuthCookie } = useAuth();
  const [errorMessage, setErrorMessage] = useState('');
  const [successMessage, setSuccessMessage] = useState('');

  const handleLogout = async () => {
    try {
      await axios.post(`${API_BASE_URL}/logout`, {}, {
        headers: {
          'X-Session-Id': authCookie
        }
      });
      localStorage.removeItem('sessionId');
      setAuthCookie(null); 
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
      {errorMessage && <p style={{ color: 'red' }}>{errorMessage}</p>}
      {successMessage && <p style={{ color: 'green' }}>{successMessage}</p>}
      <button onClick={handleLogout}>Logout</button>
    </div>
  );
};

export default Logout;