import React, { useState } from 'react';
import axios from 'axios';

const DeleteAccount = () => {
  const [errorMessage, setErrorMessage] = useState('');
  const [successMessage, setSuccessMessage] = useState('');

  const handleDeleteAccount = async () => {
    const sessionId = localStorage.getItem('sessionId');

    try {
      await axios.delete('http://backend-dev2.sa-east-1.elasticbeanstalk.com/delete-user', {
        headers: {
          'X-Session-Id': sessionId
        }
      });
      localStorage.removeItem('sessionId');
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
