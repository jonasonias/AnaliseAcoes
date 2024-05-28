import React from 'react';
import '../styles/Footer.css';

const Footer = () => {
  return (
    <footer className="footer">
      <p>
        Link para site hospedado no GitHub Pages
        <span className="spacer"></span> 
        <a href="https://jonasonias.github.io/fundamentalistacoes/">Acesse Aqui</a>
      </p>
      <p>
        Link para Localhost do Servidor 
        <span className="spacer"></span> 
        <a href="http://localhost:3001/">Acesse Aqui</a>
      </p>
    </footer>
  );
};

export default Footer;
