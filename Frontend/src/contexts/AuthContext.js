// src/contexts/AuthContext.js
import React, { createContext, useContext, useState, useEffect } from 'react';
import axios from 'axios';
import API_BASE_URL from '../apiConfig';

const AuthContext = createContext();

export const useAuth = () => {
  return useContext(AuthContext);
};

export const AuthProvider = ({ children }) => {
  const [authCookie, setAuthCookie] = useState(localStorage.getItem('sessionId'));
  const [userInfo, setUserInfo] = useState(null);

  useEffect(() => {
    const fetchUserInfo = async () => {
      if (authCookie) {
        try {
          const response = await axios.get(`${API_BASE_URL}/user-info`, {
            headers: {
              'X-Session-Id': authCookie,
            },
          });
          setUserInfo(response.data);
        } catch (error) {
          console.error('Erro ao buscar informações do usuário', error);
        }
      } else {
        setUserInfo(null);
      }
    };

    fetchUserInfo();
  }, [authCookie]);

  const value = {
    authCookie,
    setAuthCookie: (sessionId) => {
      if (sessionId) {
        localStorage.setItem('sessionId', sessionId);
      } else {
        localStorage.removeItem('sessionId');
      }
      setAuthCookie(sessionId);
    },
    userInfo,
    setUserInfo,
  };

  return (
    <AuthContext.Provider value={value}>
      {children}
    </AuthContext.Provider>
  );
};