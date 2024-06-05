import React from 'react';
import UserInfo from '../components/UserInfo';
import Logout from '../components/Logout';
import DeleteAccount from '../components/DeleteAccount';

const LoginPage = () => {
    return (
        <div className="page-container">

            <h1>Profile Page</h1>

            <p>This is the Profile page content.</p>

            <UserInfo />
            <Logout />
            <DeleteAccount />

        </div>
    );
};

export default LoginPage;