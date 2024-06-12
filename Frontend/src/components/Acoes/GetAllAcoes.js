import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import CustomAlert from '../CustomAlert'; // Importe o componente CustomAlert

const GetAllAcoes = () => {
    const [acoes, setAcoes] = useState([]);
    const [alertMessage, setAlertMessage] = useState('');
    const [alertType, setAlertType] = useState('');
    const navigate = useNavigate();

    // Função para buscar as ações na API
    const fetchAcoes = async () => {
        try {
            const response = await fetch('http://localhost:3001/acoes');
            if (response.ok) {
                const data = await response.json();
                // Formata o valor de mercado para reais (R$) com pontos e vírgulas
                const acoesFormatadas = data.map(acao => ({
                    ...acao,
                    valordemercado: new Intl.NumberFormat('pt-BR', {
                      style: 'currency',
                      currency: 'BRL',
                    }).format(acao.valordemercado),
                }));
                setAcoes(acoesFormatadas);
            } else {
                throw new Error('Erro ao buscar ações');
            }
        } catch (error) {
            console.error('Erro ao buscar ações:', error);
            setAlertMessage('Erro ao buscar ações');
            setAlertType('error');
        }
    };

    // Função para lidar com o clique no ticker
    const handleTickerClick = (ticker) => {
        navigate(`/acoes/${ticker}`);
    };

    // Hook useEffect para buscar as ações ao montar o componente
    useEffect(() => {
        fetchAcoes();
    }, []);

    return (
        <div>
            <h2>Lista de Ações</h2>
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
                    {acoes.map((acao) => (
                        <tr key={acao.ticker}>
                            <td
                                style={{ border: '1px solid black', padding: '8px', cursor: 'pointer', color: 'blue' }}
                                onClick={() => handleTickerClick(acao.ticker)}
                            >
                                {acao.ticker}
                            </td>
                            <td style={{ border: '1px solid black', padding: '8px' }}>{acao.nome}</td>
                            <td style={{ border: '1px solid black', padding: '8px' }}>{acao.setordeatuacao}</td>
                            <td style={{ border: '1px solid black', padding: '8px' }}>{acao.subsetordeatuacao}</td>
                            <td style={{ border: '1px solid black', padding: '8px' }}>{acao.segmentodeatuacao}</td>
                            <td style={{ border: '1px solid black', padding: '8px' }}>{acao.valordemercado}</td>
                        </tr>
                    ))}
                </tbody>
            </table>

            {/* Renderizar o CustomAlert se houver uma mensagem de alerta */}
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