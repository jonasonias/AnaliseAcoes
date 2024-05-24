import React, { createContext, useContext, useState } from 'react';

const AuthContext = createContext();

export const useAuth = () => {
  return useContext(AuthContext);
};

export const AuthProvider = ({ children }) => {
  const [authCookie, setAuthCookie] = useState(localStorage.getItem('sessionId'));

  const value = {
    authCookie,
    setAuthCookie: (sessionId) => {
      localStorage.setItem('sessionId', sessionId);
      setAuthCookie(sessionId);
    }
  };

  return (
    <AuthContext.Provider value={value}>
      {children}
    </AuthContext.Provider>
  );
};