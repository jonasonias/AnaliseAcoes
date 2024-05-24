import React, { useState } from 'react';
import axios from 'axios';

const Logout = () => {
  const [errorMessage, setErrorMessage] = useState('');
  const [successMessage, setSuccessMessage] = useState('');

  const handleLogout = async () => {
    const sessionId = localStorage.getItem('sessionId');

    try {
      await axios.post('http://backend-dev2.sa-east-1.elasticbeanstalk.com/logout', {}, {
        headers: {
          'X-Session-Id': sessionId
        }
      });
      localStorage.removeItem('sessionId');
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
