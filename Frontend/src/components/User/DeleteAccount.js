// src/components/DeleteAccount.js
import React, { useState } from 'react';
import axios from 'axios';
import { useAuth } from '../../contexts/AuthContext';
import API_BASE_URL from '../../apiConfig';
import CustomAlert from '../CustomAlert'; // Importe o componente CustomAlert

const DeleteAccount = ({ onDelete }) => {
  const { authCookie, setAuthCookie, setUserInfo } = useAuth();
  const [errorMessage, setErrorMessage] = useState('');
  const [successMessage, setSuccessMessage] = useState('');

  const handleDeleteAccount = async () => {
    try {
      await axios.delete(`${API_BASE_URL}/user/deleteuser`, {
        headers: {
          'X-Session-Id': authCookie,
        },
      });
      setAuthCookie(null);
      setUserInfo(null);
      setSuccessMessage('Conta excluída com sucesso');
      setErrorMessage('');
      onDelete(); // Chama a função de callback para indicar que a conta foi excluída com sucesso
    } catch (error) {
      setErrorMessage(error.response ? error.response.data : 'Erro ao excluir conta');
      setSuccessMessage('');
    }
  };

  return (
    <div>
      <h2>Deletar Conta</h2>
      {errorMessage && <CustomAlert message={errorMessage} type="error" />}
      {successMessage && <CustomAlert message={successMessage} type="success" />}
      <button onClick={handleDeleteAccount}>Deletar Conta</button>
    </div>
  );
};

export default DeleteAccount;
