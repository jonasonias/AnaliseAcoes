import React, { useState } from 'react';
import API_BASE_URL from '../../apiConfig';
import CustomAlert from '../CustomAlert'; // Importe o componente CustomAlert

const DeleteAcao = () => {
    const [ticker, setTicker] = useState('');
    const [alertMessage, setAlertMessage] = useState('');
    const [alertType, setAlertType] = useState('');

    const handleDelete = async () => {
        try {
            // Converte o ticker para maiúsculas antes de fazer a requisição
            const response = await fetch(`${API_BASE_URL}/acoes/${ticker.toUpperCase()}`, {
                method: 'DELETE'
            });
            if (response.ok) {
                setAlertMessage('Ação deletada com sucesso');
                setAlertType('success');
            } else {
                setAlertMessage('Erro ao deletar ação');
                setAlertType('error');
            }
        } catch (error) {
            console.error('Erro ao deletar ação:', error);
            setAlertMessage('Erro ao deletar ação');
            setAlertType('error');
        }
    };

    return (
        <div>
            <input
                type="text"
                value={ticker}
                onChange={(e) => setTicker(e.target.value)}
                placeholder="Ticker"
            />
            <button onClick={handleDelete}>Deletar Ação</button>

            {/* Renderize o CustomAlert se houver uma mensagem de alerta */}
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

export default DeleteAcao;