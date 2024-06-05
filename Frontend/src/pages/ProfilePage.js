import React, { useState } from 'react';
import UserInfo from '../components/UserInfo';
import Logout from '../components/Logout';
import DeleteAccount from '../components/DeleteAccount';

const ProfilePage = () => {
    const [isLoggedOut, setIsLoggedOut] = useState(false);

    const handleLogout = () => {
        setIsLoggedOut(true);
    };

    return (
        <div className="page-container">
            <h1>Profile Page</h1>
            <p>This is the Profile page content.</p>
            <UserInfo isLoggedOut={isLoggedOut} />
            {!isLoggedOut && <Logout onLogout={handleLogout} />}
            {!isLoggedOut && <DeleteAccount />}
        </div>
    );
};

export default ProfilePage;