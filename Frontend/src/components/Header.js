import React, { useState } from 'react';
import Navbar from './Navbar';
import RegisterForm from './RegisterForm';
import LoginForm from './LoginForm';
import '../styles/Header.css';

const Header = () => {
  const [isPopupOpen, setIsPopupOpen] = useState(false);

  const togglePopup = () => {
    setIsPopupOpen(!isPopupOpen);
  };

  return (
    <header>
      <Navbar togglePopup={togglePopup} />
      {isPopupOpen && (
        <div className="popup">
          <div className="popup-inner">
            <button className="close-btn" onClick={togglePopup}>X</button>
            <div className="login-register-container">
              <RegisterForm className="register-form" />
              <div className="divider"></div> {/* Adicione o divisor */}
              <LoginForm className="login-form" />
            </div>
          </div>
        </div>
      )}
    </header>
  );
};

export default Header;