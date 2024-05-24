import React, { useState } from 'react';
import axios from 'axios';
import { useAuth } from '../contexts/AuthContext'; // Importe o hook useAuth

const Logout = () => {
  const { authCookie, setAuthCookie } = useAuth(); // Use o hook useAuth para acessar e definir o cookie de autenticação
  const [errorMessage, setErrorMessage] = useState('');
  const [successMessage, setSuccessMessage] = useState('');

  const handleLogout = async () => {
    try {
      await axios.post('http://localhost:3001/logout', {}, {
        headers: {
          'X-Session-Id': authCookie
        }
      });
      localStorage.removeItem('sessionId');
      setAuthCookie(null); // Limpar o cookie de autenticação no contexto
      setSuccessMessage('Logout bem-sucedido');
      setErrorMessage('');
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
