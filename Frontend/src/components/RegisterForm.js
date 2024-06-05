import React, { useState } from 'react';
import axios from 'axios';
import API_BASE_URL from '../apiConfig';

const RegisterForm = () => {
    const [name, setName] = useState('');
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [errorMessage, setErrorMessage] = useState('');
    const [successMessage, setSuccessMessage] = useState('');

    const handleSubmit = async (e) => {
        e.preventDefault();

        try {
            const response = await axios.post(`${API_BASE_URL}/register`, {
                name,
                email,
                password
            });
            setSuccessMessage(response.data);
            setName('');
            setEmail('');
            setPassword('');
            setErrorMessage('');
        } catch (error) {
            setErrorMessage(error.response.data);
        }
    };

    return (
        <div>
            <h2>Cadastrar</h2>
            {errorMessage && <p style={{ color: 'red' }}>{errorMessage}</p>}
            {successMessage && <p style={{ color: 'green' }}>{successMessage}</p>}
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
                        type= "password"
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
        </div>
    );
};

export default RegisterForm;
