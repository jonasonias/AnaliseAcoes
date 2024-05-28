import React from 'react';
import { Link } from 'react-router-dom';
import '../styles/Navbar.css';

const Navbar = () => {
  return (
    <nav className="navbar">
      <ul className="navbar-list">
        <li className="navbar-item">
          <Link to="/" className="nav-icon" aria-label="Home">
            <i className="fas fa-home"></i>
          </Link>
        </li>
        <li className="navbar-item"> 
          <Link to="/about" className="navbar-link">About</Link>
        </li>
        <li className="navbar-item">
          <Link to="/login" className="navbar-link">Log In</Link>
        </li>
      </ul>
    </nav>
  );
};

export default Navbar;