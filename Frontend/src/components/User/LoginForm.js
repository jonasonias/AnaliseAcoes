import React, { useState } from 'react';
import axios from 'axios';
import { useAuth } from '../../contexts/AuthContext';
import CustomAlert from '../CustomAlert'; // Importe o componente CustomAlert
import API_BASE_URL from '../../apiConfig';

const LoginForm = ({ onSuccess }) => {
    const { setAuthCookie } = useAuth();
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [alertMessage, setAlertMessage] = useState('');
    const [alertType, setAlertType] = useState('');

    const handleSubmit = async (e) => {
        e.preventDefault();

        try {
            const response = await axios.post(`${API_BASE_URL}/login`, {
                email,
                password
            });
            setAuthCookie(response.data.sessionId);
            setAlertMessage(response.data.message);
            setAlertType('success');
            setEmail('');
            setPassword('');
            setTimeout(() => {
                if (onSuccess) {
                    onSuccess();
                }
            }, 500); // Espera 1 segundo antes de chamar onSuccess
        } catch (error) {
            setAlertMessage(error.response.data);
            setAlertType('error');
        }
    };

    return (
        <div>
            <h2>Login</h2>
            <form onSubmit={handleSubmit}>
                <div style={{ marginBottom: '5px' }}>
                    <label htmlFor="loginemail" style={{ minWidth: '60px', display: 'inline-block' }}>
                        Email:
                    </label>
                    <input
                        type="email"
                        id="loginemail"
                        name="loginemail"
                        value={email}
                        onChange={(e) => setEmail(e.target.value)}
                        autoComplete="email"
                        style={{ marginBottom: '10px' }}
                    />
                </div>
                <div style={{ marginBottom: '10px' }}>
                    <label htmlFor="loginpassword" style={{ minWidth: '60px', display: 'inline-block' }}>
                        Senha:
                    </label>
                    <input
                        type="password"
                        id="loginpassword"
                        name="loginpassword"
                        value={password}
                        onChange={(e) => setPassword(e.target.value)}
                        autoComplete="current-password"
                        style={{ marginBottom: '10px' }}
                    />
                </div>
                <button type="submit" style={{ marginTop: '10px' }}>Login</button>
            </form>

            {/* Renderize o CustomAlert se houver uma mensagem de alerta */}
            {alertMessage && (
                <CustomAlert
                    message={alertMessage}
                    type={alertType}
                    onClose={() => {
                        setAlertMessage('');
                        setAlertType('');
                    }}
                />
            )}
        </div>
    );
};

export default LoginForm;