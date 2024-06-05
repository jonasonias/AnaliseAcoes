// src/components/DeleteAccount.js
import React, { useState } from 'react';
import axios from 'axios';
import { useAuth } from '../contexts/AuthContext';
import API_BASE_URL from '../apiConfig';

const DeleteAccount = () => {
  const { authCookie, setAuthCookie, setUserInfo } = useAuth();
  const [errorMessage, setErrorMessage] = useState('');
  const [successMessage, setSuccessMessage] = useState('');

  const handleDeleteAccount = async () => {
    try {
      await axios.delete(`${API_BASE_URL}/delete-user`, {
        headers: {
          'X-Session-Id': authCookie,
        },
      });
      setAuthCookie(null);
      setUserInfo(null);
      setSuccessMessage('Conta excluída com sucesso');
      setErrorMessage('');
    } catch (error) {
      setErrorMessage(error.response ? error.response.data : 'Erro ao excluir conta');
      setSuccessMessage('');
    }
  };

  return (
    <div>
      <h2>Deletar Conta</h2>
      {errorMessage && <p style={{ color: 'red' }}>{errorMessage}</p>}
      {successMessage && <p style={{ color: 'green' }}>{successMessage}</p>}
      <button onClick={handleDeleteAccount}>Deletar Conta</button>
    </div>
  );
};

export default DeleteAccount;
