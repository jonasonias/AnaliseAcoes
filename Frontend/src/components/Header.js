import React, { useState } from 'react';
import Navbar from './Navbar';
import RegisterForm from './RegisterForm';
import LoginForm from './LoginForm';
import '../styles/Header.css';

const Header = () => {
  const [isPopupOpen, setIsPopupOpen] = useState(false);
  const [isFadingOut, setIsFadingOut] = useState(false);

  const togglePopup = () => {
    if (isPopupOpen) {
      setIsFadingOut(true);
      setTimeout(() => {
        setIsPopupOpen(false);
        setIsFadingOut(false);
      }, 1000); // Tempo para o fadeout terminar
    } else {
      setIsPopupOpen(true);
    }
  };

  return (
    <header>
      <Navbar togglePopup={togglePopup} />
      {isPopupOpen && (
        <div className={`popup ${isFadingOut ? 'fade-out' : ''}`}>
          <div className="popup-inner">
            <button className="close-btn" onClick={togglePopup}>X</button>
            <div className="login-register-container">
              <RegisterForm className="register-form" />
              <div className="divider"></div>
              <LoginForm className="login-form" onSuccess={togglePopup} />
            </div>
          </div>
        </div>
      )}
    </header>
  );
};

export default Header;