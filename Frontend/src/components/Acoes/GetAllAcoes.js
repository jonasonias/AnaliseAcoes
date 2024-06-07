import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import CustomAlert from '../CustomAlert'; // Importe o componente CustomAlert

const GetAllAcoes = () => {
    const [acoes, setAcoes] = useState([]);
    const [alertMessage, setAlertMessage] = useState('');
    const [alertType, setAlertType] = useState('');
    const navigate = useNavigate();

    const fetchAcoes = async () => {
        try {
            const response = await fetch('http://localhost:3001/acoes');
            const data = await response.json();
            if (response.ok) {
                setAcoes(data);
            } else {
                setAlertMessage('Erro ao buscar ações');
                setAlertType('error');
            }
        } catch (error) {
            console.error('Erro ao buscar ações:', error);
            setAlertMessage('Erro ao buscar ações');
            setAlertType('error');
        }
    };

    const formatCurrency = (value) => {
        return value.toLocaleString('pt-BR', {
            style: 'currency',
            currency: 'BRL',
        });
    };

    const handleTickerClick = (ticker) => {
        navigate(`/acoes/${ticker}`);
    };

    useEffect(() => {
        fetchAcoes(); // Chama fetchAcoes ao montar o componente
    }, []); // O segundo argumento [] indica que useEffect só será executado uma vez

    return (
        <div>
            <table style={{ width: '100%', borderCollapse: 'collapse', marginTop: '20px' }}>
                <thead>
                    <tr>
                        <th style={{ border: '1px solid black', padding: '8px' }}>Ticker</th>
                        <th style={{ border: '1px solid black', padding: '8px' }}>Nome</th>
                        <th style={{ border: '1px solid black', padding: '8px' }}>Setor de Atuação</th>
                        <th style={{ border: '1px solid black', padding: '8px' }}>Subsetor de Atuação</th>
                        <th style={{ border: '1px solid black', padding: '8px' }}>Segmento de Atuação</th>
                        <th style={{ border: '1px solid black', padding: '8px' }}>Valor de Mercado</th>
                    </tr>
                </thead>
                <tbody>
                    {acoes.map(acao => (
                        <tr key={acao.ticker}>
                            <td
                                style={{ border: '1px solid black', padding: '8px', cursor: 'pointer', color: 'blue' }}
                                onClick={() => handleTickerClick(acao.ticker)}
                            >
                                {acao.ticker}
                            </td>
                            <td style={{ border: '1px solid black', padding: '8px' }}>{acao.nome}</td>
                            <td style={{ border: '1px solid black', padding: '8px' }}>{acao.setorDeAtuacao}</td>
                            <td style={{ border: '1px solid black', padding: '8px' }}>{acao.subsetorDeAtuacao}</td>
                            <td style={{ border: '1px solid black', padding: '8px' }}>{acao.segmentoDeAtuacao}</td>
                            <td style={{ border: '1px solid black', padding: '8px' }}>{formatCurrency(acao.valorDeMercado)}</td>
                        </tr>
                    ))}
                </tbody>
            </table>

            { /* Renderize o CustomAlert se houver uma mensagem de alerta */ }
            {alertMessage && (
                <CustomAlert
                    message={alertMessage}
                    type={alertType}
                    onClose={() => {
                        setAlertMessage('');
                        setAlertType('');
                    }}
                />
            )}
        </div>
    );
};

export default GetAllAcoes;