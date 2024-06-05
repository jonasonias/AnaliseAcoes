// src/pages/ProfilePage.js
import React, { useState } from 'react';
import UserInfo from '../components/UserInfo';
import Logout from '../components/Logout';
import DeleteAccount from '../components/DeleteAccount';
import { useAuth } from '../contexts/AuthContext';

const ProfilePage = () => {
  const { authCookie } = useAuth();
  const [isLoggedOut, setIsLoggedOut] = useState(false);

  const handleLogout = () => {
    setIsLoggedOut(true);
  };

  return (
    <div className="page-container">
      <h1>Profile Page</h1>
      <p>This is the Profile page content.</p>
      <UserInfo isLoggedOut={isLoggedOut} />
      {authCookie && !isLoggedOut && <Logout onLogout={handleLogout} />}
      {authCookie && !isLoggedOut && <DeleteAccount />}
    </div>
  );
};

export default ProfilePage;