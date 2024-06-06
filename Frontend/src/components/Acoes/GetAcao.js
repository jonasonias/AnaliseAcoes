import React, { useState } from 'react';
import CustomAlert from '../CustomAlert'; // Importe o componente CustomAlert

const GetAcao = () => {
    const [ticker, setTicker] = useState('');
    const [acao, setAcao] = useState(null);
    const [error, setError] = useState(null); // Novo estado para armazenar mensagens de erro

    const fetchAcao = async () => {
        try {
            const response = await fetch(`http://localhost:3001/acoes/${ticker}`);
            if (!response.ok) {
                throw new Error('Ação não encontrada');
            }
            const data = await response.json();
            setAcao(data);
            setError(null); // Limpa o erro anterior
        } catch (error) {
            setError(error.message); // Define a mensagem de erro no estado
            setAcao(null); // Limpa os dados anteriores
        }
    };

    const formatCurrency = (value) => {
        return value.toLocaleString('pt-BR', {
            style: 'currency',
            currency: 'BRL',
        });
    };

    return (
        <div>
            <input
                type="text"
                value={ticker}
                onChange={(e) => setTicker(e.target.value)}
                placeholder="Digite o ticker"
            />
            <button onClick={fetchAcao}>Buscar Ação</button>
            {acao && (
                <div>
                    <p>{acao.ticker} - {acao.nome} - {acao.setorDeAtuacao} - {acao.subsetorDeAtuacao} - {acao.segmentoDeAtuacao} - {formatCurrency(acao.valorDeMercado)}</p>
                </div>
            )}
            {error && <CustomAlert message={error} onClose={() => setError(null)} />} {/* Renderize o CustomAlert quando houver um erro */}
        </div>
    );
};

export default GetAcao;