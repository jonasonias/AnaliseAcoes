import React, { useState } from 'react';
import axios from 'axios';
import { useAuth } from '../contexts/AuthContext';
import API_BASE_URL from '../apiConfig';

const LoginForm = () => {
    const { setAuthCookie } = useAuth();
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [errorMessage, setErrorMessage] = useState('');
    const [successMessage, setSuccessMessage] = useState('');

    const handleSubmit = async (e) => {
        e.preventDefault();

        try {
            const response = await axios.post(`${API_BASE_URL}/login`, {
                email,
                password
            });
            setAuthCookie(response.data.sessionId);
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
                <label htmlFor="loginemail">
                    Email:
                    <input
                        type="email"
                        id="loginemail"
                        name="loginemail"
                        value={email}
                        onChange={(e) => setEmail(e.target.value)}
                        autoComplete="email"
                    />
                </label>
                <br />
                <label htmlFor="loginpassword">
                    Password:
                    <input
                        type="password"
                        id="loginpassword"
                        name="loginpassword"
                        value={password}
                        onChange={(e) => setPassword(e.target.value)}
                        autoComplete="current-password"
                    />
                </label>
                <br />
                <button type="submit">Login</button>
            </form>
        </div>
    );
};

export default LoginForm;