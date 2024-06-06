import React, { useState } from 'react';
import axios from 'axios';
import CustomAlert from '../CustomAlert'; // Importe o componente CustomAlert
import API_BASE_URL from '../../apiConfig';

const RegisterForm = () => {
    const [name, setName] = useState('');
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [alertMessage, setAlertMessage] = useState('');
    const [alertType, setAlertType] = useState('');

    const handleSubmit = async (e) => {
        e.preventDefault();

        try {
            const response = await axios.post(`${API_BASE_URL}/register`, {
                name,
                email,
                password
            });
            setAlertMessage(response.data);
            setAlertType('success');
            setName('');
            setEmail('');
            setPassword('');
        } catch (error) {
            setAlertMessage(error.response.data);
            setAlertType('error');
        }
    };

    return (
        <div>
            <h2>Cadastrar</h2>
            <form onSubmit={handleSubmit}>
                <label htmlFor="name" style={{ minWidth: '60px', display: 'inline-block', marginBottom: '10px' }}>
                    Nome:
                </label>
                <input
                    type="text"
                    id="name"
                    name="name"
                    value={name}
                    onChange={(e) => setName(e.target.value)}
                    autoComplete="name"
                    style={{ marginBottom: '10px' }}
                />
                <br />
                <label htmlFor="registeremail" style={{ minWidth: '60px', display: 'inline-block', marginBottom: '10px' }}>
                    Email:
                </label>
                <input
                    type="email"
                    id="registeremail"
                    name="registeremail"
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                    autoComplete="email"
                    style={{ marginBottom: '10px' }}
                />
                <br />
                <label htmlFor="registerpassword" style={{ minWidth: '60px', display: 'inline-block', marginBottom: '10px' }}>
                    Senha:
                </label>
                <div style={{ position: 'relative', display: 'inline-block', marginBottom: '10px' }}>
                    <input
                        type="password"
                        id="registerpassword"
                        name="registerpassword"
                        value={password}
                        onChange={(e) => setPassword(e.target.value)}
                        autoComplete="new-password"
                        style={{ marginBottom: '10px' }}
                    />
                </div>
                <br />
                <button type="submit" style={{ marginTop: '10px' }}>Register</button>
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

export default RegisterForm;