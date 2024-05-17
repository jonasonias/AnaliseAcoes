// AboutPage.js
import React from 'react';
import SumForm from '../components/SumForm'; // Importe o componente SumForm

const AboutPage = () => {
  return (
    <div>
      <h1>About Page</h1>
      <p>This is the About page content.</p>
      
      {/* Renderize o componente SumForm dentro do conteúdo da página About */}
      <SumForm />
    </div>
  );
};

export default AboutPage;
