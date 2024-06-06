import React, { useState } from 'react';
import CustomAlert from '../CustomAlert'; // Importe o componente CustomAlert

const GetAllAcoes = () => {
    const [acoes, setAcoes] = useState([]);
    const [alertMessage, setAlertMessage] = useState('');
    const [alertType, setAlertType] = useState('');

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

    return (
        <div>
            <button onClick={fetchAcoes}>Listar Ações</button>
            <ul>
                {acoes.map(acao => (
                    <li key={acao.ticker}>
                        {acao.ticker} - {acao.nome} - {acao.setorDeAtuacao} - {acao.subsetorDeAtuacao} - {acao.segmentoDeAtuacao} - {formatCurrency(acao.valorDeMercado)}
                    </li>
                ))}
            </ul>

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