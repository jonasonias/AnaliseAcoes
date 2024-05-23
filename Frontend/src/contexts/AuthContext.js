import React, { createContext, useContext, useState } from 'react';

const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
  const [authCookie, setAuthCookie] = useState('');

  return (
    <AuthContext.Provider value={{ authCookie, setAuthCookie }}>
      {children}
    </AuthContext.Provider>
  );
};

export const useAuth = () => useContext(AuthContext);
