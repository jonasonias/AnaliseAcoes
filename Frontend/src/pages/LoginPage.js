import React from 'react';
import RegisterForm from '../components/RegisterForm';
import LoginForm from '../components/LoginForm';
import UserInfo from '../components/UserInfo';
import Logout from '../components/Logout';
import DeleteAccount from '../components/DeleteAccount';

const LoginPage = () => {
    return (
        <div className="page-container">

            <h1>Login Page</h1>

            <p>This is the Login page content.</p>

            <RegisterForm />
            <LoginForm />
            <UserInfo />
            <Logout />
            <DeleteAccount />

        </div>
    );
};

export default LoginPage;