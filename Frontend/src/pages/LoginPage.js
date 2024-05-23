import React from 'react';
import RegisterForm from '../components/RegisterForm';
import LoginForm from '../components/LoginForm';
import UserInfo from '../components/UserInfo';
import '../styles/General.css';

const LoginPage = () => {
    return (
        <div className="inicio-pagina">
            <h1>Login Page</h1>
            <div className="inicio-content">
                <RegisterForm />
                <LoginForm />
                <UserInfo />
            </div>
        </div>
    );
};

export default LoginPage;
