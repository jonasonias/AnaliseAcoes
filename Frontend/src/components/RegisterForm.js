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
            <h2>Register</h2>
            {errorMessage && <p style={{ color: 'red' }}>{errorMessage}</p>}
            {successMessage && <p style={{ color: 'green' }}>{successMessage}</p>}
            <form onSubmit={handleSubmit}>
                <label htmlFor="name">
                    Name:
                    <input
                        type="text"
                        id="name"
                        name="name"
                        value={name}
                        onChange={(e) => setName(e.target.value)}
                        autoComplete="name"
                    />
                </label>
                <br />
                <label htmlFor="registeremail">
                    Email:
                    <input
                        type="email"
                        id="registeremail"
                        name="registeremail"
                        value={email}
                        onChange={(e) => setEmail(e.target.value)}
                        autoComplete="email"
                    />
                </label>
                <br />
                <label htmlFor="registerpassword">
                    Password:
                    <input
                        type="password"
                        id="registerpassword"
                        name="registerpassword"
                        value={password}
                        onChange={(e) => setPassword(e.target.value)}
                        autoComplete="new-password"
                    />
                </label>
                <br />
                <button type="submit">Register</button>
            </form>
        </div>
    );
};

export default RegisterForm;