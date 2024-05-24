import React from 'react';
import RegisterForm from '../components/RegisterForm';
import LoginForm from '../components/LoginForm';
import UserInfo from '../components/UserInfo';
import Logout from '../components/Logout';
import DeleteAccount from '../components/DeleteAccount';
import '../styles/General.css';

const LoginPage = () => {
    return (
        <div className="inicio-pagina">
            <h1>Login Page</h1>
            <div className="inicio-content">
                <RegisterForm />
                <LoginForm />
                <UserInfo />
                <Logout />
                <DeleteAccount />
            </div>
        </div>
    );
};

export default LoginPage;
