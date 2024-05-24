import React, { useState } from 'react';
import axios from 'axios';
import { useAuth } from '../contexts/AuthContext'; // Importe o hook useAuth

const LoginForm = () => {
  const { setAuthCookie } = useAuth(); // Use o hook useAuth para acessar a função setAuthCookie
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [errorMessage, setErrorMessage] = useState('');
  const [successMessage, setSuccessMessage] = useState('');

  const handleSubmit = async (e) => {
    e.preventDefault();

    try {
      const response = await axios.post('http://backend-dev2.sa-east-1.elasticbeanstalk.com/login', {
        email,
        password
      });
      // Após o login bem-sucedido, defina o sessionId no LocalStorage
      localStorage.setItem('sessionId', response.data.sessionId);
      setSuccessMessage(response.data.message);
      setEmail('');
      setPassword('');
      setErrorMessage('');
    } catch (error) {
      setErrorMessage(error.response.data);
    }
  };

  return (
    <div>
      <h2>Login</h2>
      {errorMessage && <p style={{ color: 'red' }}>{errorMessage}</p>}
      {successMessage && <p style={{ color: 'green' }}>{successMessage}</p>}
      <form onSubmit={handleSubmit}>
        <label>
          Email:
          <input
            type="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
          />
        </label>
        <br />
        <label>
          Password:
          <input
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
          />
        </label>
        <br />
        <button type="submit">Login</button>
      </form>
    </div>
  );
};

export default LoginForm;
