import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';

const AuthForm = () => {
    const [name, setName] = useState('');
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const [message, setMessage] = useState('');
    const [isLoggedIn, setIsLoggedIn] = useState(false);
    const [userInfo, setUserInfo] = useState({});
    const [isLogin, setIsLogin] = useState(false); // Novo estado para alternar entre registro e login

    const navigate = useNavigate();

    useEffect(() => {
        const checkLoginStatus = async () => {
            const loggedIn = localStorage.getItem('isLoggedIn') === 'true';
            if (loggedIn) {
                try {
                    const response = await fetch('http://backend-dev2.sa-east-1.elasticbeanstalk.com/user-info', {
                        method: 'GET',
                        headers: {
                            'Content-Type': 'application/json',
                        },
                        credentials: 'include',
                    });

                    if (response.ok) {
                        const data = await response.json();
                        setUserInfo(data);
                        setIsLoggedIn(true);
                    } else {
                        localStorage.setItem('isLoggedIn', 'false');
                        setIsLoggedIn(false);
                    }
                } catch (error) {
                    localStorage.setItem('isLoggedIn', 'false');
                    setIsLoggedIn(false);
                }
            }
        };

        checkLoginStatus();
    }, []);

    const handleRegister = async (e) => {
        e.preventDefault();
        try {
            const response = await fetch('http://backend-dev2.sa-east-1.elasticbeanstalk.com/register', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ name, email, password }),
            });

            if (response.ok) {
                setMessage('Usuário registrado com sucesso');
                setName('');
                setEmail('');
                setPassword('');
            } else {
                const errorData = await response.text();
                setMessage(`Erro: ${errorData}`);
            }
        } catch (error) {
            setMessage('Erro ao registrar usuário');
        }
    };

    const handleLogin = async (e) => {
        e.preventDefault();
        try {
            const response = await fetch('http://backend-dev2.sa-east-1.elasticbeanstalk.com/login', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ email, password }),
            });

            const data = await response.json();
            if (response.ok) {
                setMessage('Login bem-sucedido');
                setIsLoggedIn(true);
                localStorage.setItem('isLoggedIn', 'true');
                setUserInfo({ name: data.name, email });
                navigate('/'); // Redirecionar para a HomePage
            } else {
                setMessage(`Erro: ${data.message}`);
            }
        } catch (error) {
            setMessage('Erro ao fazer login');
        }
    };

    const handleLogout = () => {
        fetch('http://backend-dev2.sa-east-1.elasticbeanstalk.com/logout', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            credentials: 'include',
        }).then(() => {
            localStorage.setItem('isLoggedIn', 'false');
            localStorage.removeItem('userInfo');
            setIsLoggedIn(false);
            setUserInfo({});
        }).catch(error => {
            setMessage('Erro ao fazer logout');
        });
    };

    const handleDeleteAccount = async () => {
        try {
            const response = await fetch('http://backend-dev2.sa-east-1.elasticbeanstalk.com/delete-user', {
                method: 'DELETE',
                headers: {
                    'Content-Type': 'application/json',
                },
                credentials: 'include',
            });

            if (response.ok) {
                localStorage.setItem('isLoggedIn', 'false');
                localStorage.removeItem('userInfo');
                setIsLoggedIn(false);
                setUserInfo({});
                setMessage('Conta excluída com sucesso');
            } else {
                const errorData = await response.text();
                setMessage(`Erro: ${errorData}`);
            }
        } catch (error) {
            setMessage('Erro ao excluir conta');
        }
    };

    const handleToggle = () => {
        setIsLogin(!isLogin);
        setMessage('');
        setName('');
        setEmail('');
        setPassword('');
    };

    return (
        <div>
            {isLoggedIn ? (
                <div>
                    <p>Nome: {userInfo.name}</p>
                    <p>Email: {userInfo.email}</p>
                    <button onClick={handleLogout}>Logout</button>
                    <button onClick={handleDeleteAccount}>Excluir Conta</button>
                    {message && <p>{message}</p>}
                </div>
            ) : (
                <div>
                    <h1>{isLogin ? 'Login' : 'Registrar'}</h1>
                    <form onSubmit={isLogin ? handleLogin : handleRegister}>
                        {!isLogin && (
                            <div>
                                <label>
                                    Nome:
                                    <input
                                        type="text"
                                        value={name}
                                        onChange={(e) => setName(e.target.value)}
                                        required={!isLogin}
                                    />
                                </label>
                            </div>
                        )}
                        <div>
                            <label>
                                Email:
                                <input
                                    type="email"
                                    value={email}
                                    onChange={(e) => setEmail(e.target.value)}
                                    required
                                />
                            </label>
                        </div>
                        <div>
                            <label>
                                Senha:
                                <input
                                    type="password"
                                    value={password}
                                    onChange={(e) => setPassword(e.target.value)}
                                    required
                                />
                            </label>
                        </div>
                        {message && <p>{message}</p>}
                        <button type="submit">{isLogin ? 'Login' : 'Registrar'}</button>
                    </form>
                    <button onClick={handleToggle}>
                        {isLogin ? 'Não tem uma conta? Registre-se' : 'Já tem uma conta? Faça login'}
                    </button>
                </div>
            )}
        </div>
    );
};

export default AuthForm;