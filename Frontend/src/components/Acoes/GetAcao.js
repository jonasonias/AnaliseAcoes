import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { FaTools } from 'react-icons/fa'; // Importe o ícone FaTools do Font Awesome

const GetAcao = ({ code }) => {
  const [acao, setAcao] = useState(null);
  const [error, setError] = useState(null); // Novo estado para armazenar mensagens de erro

  useEffect(() => {
    const fetchAcao = async () => {
      try {
        const response = await axios.get(`http://localhost:3001/acoes/${code}`);
        if (response.data) {
          const data = response.data;
          // Formata o valor de mercado para reais (R$) com pontos e vírgulas
          const valorFormatado = new Intl.NumberFormat('pt-BR', {
            style: 'currency',
            currency: 'BRL',
          }).format(data.valordemercado);
          data.valordemercado = valorFormatado;
          setAcao(data); // Define os dados da ação no estado 'acao'
          setError(null); // Limpa o erro em caso de sucesso
        } else {
          setError('Ação não encontrada'); // Define a mensagem de erro quando não houver dados
          setAcao(null); // Limpa os dados da ação em caso de erro
        }
      } catch (error) {
        console.error('Erro ao obter ação:', error);
        setError('Ação não encontrada'); // Define a mensagem de erro
        setAcao(null); // Limpa os dados da ação em caso de erro
      }
    };

    fetchAcao(); // Executa a busca da ação ao montar o componente
  }, [code]); // Executa o efeito sempre que 'code' mudar

  return (
    <div>
      {acao && (
        <div>
          <p><strong>Ticker:</strong> {acao.ticker}</p>
          <p><strong>Nome:</strong> {acao.nome}</p>
          <p><strong>Setor de Atuação:</strong> {acao.setordeatuacao}</p>
          <p><strong>Subsetor de Atuação:</strong> {acao.subsetordeatuacao}</p>
          <p><strong>Segmento de Atuação:</strong> {acao.segmentodeatuacao}</p>
          <p><strong>Valor de Mercado:</strong> {acao.valordemercado}</p>
        </div>
      )}
      {error && (
        <div style={{ textAlign: 'center' }}>
          <p style={{ color: 'black', fontWeight: 'bold' }}>
            <FaTools style={{ marginTop: '10%' }} /> {error}
          </p>
        </div>
      )}
    </div>
  );
};

export default GetAcao;