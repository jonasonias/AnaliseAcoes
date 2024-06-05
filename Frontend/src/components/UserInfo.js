import React, { useState, useEffect, useCallback } from 'react';
import axios from 'axios';
import { useAuth } from '../contexts/AuthContext';
import API_BASE_URL from '../apiConfig';

const UserInfo = ({ isLoggedOut }) => {
    const { authCookie } = useAuth();
    const [userInfo, setUserInfo] = useState(null);
    const [errorMessage, setErrorMessage] = useState('');

    const fetchUserInfo = useCallback(async () => {
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
    }, [authCookie]);

    useEffect(() => {
        if (authCookie) {
            fetchUserInfo();
        } else {
            setErrorMessage('Necessário Logar para acessar');
        }
    }, [authCookie, fetchUserInfo]);

    return (
        <div>
            <h2>Informações do Usuário</h2>
            {errorMessage && <p style={{ color: 'red' }}>{errorMessage}</p>}
            {isLoggedOut ? (
                <p style={{ color: 'green' }}>Logout bem-sucedido</p>
            ) : (
                userInfo && (
                    <div>
                        <p>ID: {userInfo.id}</p>
                        <p>Nome: {userInfo.name}</p>
                        <p>Email: {userInfo.email}</p>
                    </div>
                )
            )}
        </div>
    );
};

export default UserInfo;