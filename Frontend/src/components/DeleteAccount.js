import React from 'react';
import axios from 'axios';

const DeleteAccount = () => {
  const handleDeleteAccount = async () => {
    const sessionId = localStorage.getItem('sessionId');

    try {
      await axios.delete('http://backend-dev2.sa-east-1.elasticbeanstalk.com/delete-user', {
        headers: {
          'X-Session-Id': sessionId
        }
      });
      localStorage.removeItem('sessionId');
      console.log('Conta excluída com sucesso');
    } catch (error) {
      console.error('Erro ao excluir conta:', error.response ? error.response.data : error.message);
    }
  };

  return (
    <div>
      <button onClick={handleDeleteAccount}>Deletar Conta</button>
    </div>
  );
};

export default DeleteAccount;