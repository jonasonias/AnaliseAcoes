// src/components/UserInfo.js
import React, { useState } from 'react';
import axios from 'axios';
import { useAuth } from '../contexts/AuthContext';
import API_BASE_URL from '../apiConfig';

const UserInfo = () => {
    const { authCookie } = useAuth();
    const [userInfo, setUserInfo] = useState(null);
    const [errorMessage, setErrorMessage] = useState('');

    const fetchUserInfo = async () => {
        try {
            const response = await axios.get(`${API_BASE_URL}/user-info`, {
                headers: {
                    'X-Session-Id': authCookie
                }
            });
            setUserInfo(response.data);
            setErrorMessage('');
        } catch (error) {
            setErrorMessage(error.response ? error.response.data : 'Erro ao recuperar informações do usuário');
        }
    };

    return (
        <div>
            <h2>Informações do Usuário</h2>
            <button onClick={fetchUserInfo}>Puxar Informações do Usuário</button>
            {errorMessage && <p style={{ color: 'red' }}>{errorMessage}</p>}
            {userInfo && (
                <div>
                    <p>ID: {userInfo.id}</p>
                    <p>Nome: {userInfo.name}</p>
                    <p>Email: {userInfo.email}</p>
                </div>
            )}
        </div>
    );
};

export default UserInfo;
