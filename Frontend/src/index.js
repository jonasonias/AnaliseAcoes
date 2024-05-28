import React from 'react';
import { createRoot } from 'react-dom/client'; // Importe createRoot
import App from './App';
import '@fortawesome/fontawesome-free/css/all.min.css';

// Pegue o elemento raiz
const container = document.getElementById('root');

// Crie um root
const root = createRoot(container);

// Renderize sua aplicação no root
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);
