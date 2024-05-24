import React from 'react';
import axios from 'axios';

const Logout = () => {
  const handleLogout = async () => {
    const sessionId = localStorage.getItem('sessionId');

    try {
      await axios.post('http://backend-dev2.sa-east-1.elasticbeanstalk.com/logout', {}, {
        headers: {
          'X-Session-Id': sessionId
        }
      });
      localStorage.removeItem('sessionId');
      console.log('Logout bem-sucedido');
    } catch (error) {
      console.error('Erro ao fazer logout:', error.response ? error.response.data : error.message);
    }
  };

  return (
    <div>
      <button onClick={handleLogout}>Logout</button>
    </div>
  );
};

export default Logout;