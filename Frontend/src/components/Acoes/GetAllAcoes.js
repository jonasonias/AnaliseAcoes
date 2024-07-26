import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import API_BASE_URL from '../../apiConfig';
import CustomAlert from '../CustomAlert';

const GetAllAcoes = () => {
    const [acoes, setAcoes] = useState([]);
    const [alertMessage, setAlertMessage] = useState('');
    const [alertType, setAlertType] = useState('');
    const [sortConfig, setSortConfig] = useState({ key: 'ticker', direction: 'ascending' });
    const [filterText, setFilterText] = useState('');
    const navigate = useNavigate();

    const fetchAcoes = async () => {
        try {
            const response = await fetch(`${API_BASE_URL}/acoes`);
            if (response.ok) {
                const data = await response.json();
                setAcoes(data);
            } else {
                throw new Error('Erro ao buscar ações');
            }
        } catch (error) {
            console.error('Erro ao buscar ações:', error);
            setAlertMessage('Erro ao buscar ações');
            setAlertType('error');
        }
    };

    const handleTickerClick = (ticker) => {
        navigate(`/acoes/${ticker}`);
    };

    useEffect(() => {
        fetchAcoes();
    }, []);

    const requestSort = (key) => {
        let direction = 'ascending';
        if (sortConfig.key === key && sortConfig.direction === 'ascending') {
            direction = 'descending';
        }
        setSortConfig({ key, direction });
    };

    const filteredAcoes = acoes.filter((acao) => {
        const ticker = acao.ticker ? acao.ticker.toLowerCase() : '';
        const nome = acao.nome ? acao.nome.toLowerCase() : '';
        const setor = acao.setor ? acao.setor.toLowerCase() : '';
        const subsetor = acao.subsetor ? acao.subsetor.toLowerCase() : '';
        const segmento = acao.segmento ? acao.segmento.toLowerCase() : '';

        return (
            ticker.includes(filterText.toLowerCase()) ||
            nome.includes(filterText.toLowerCase()) ||
            setor.includes(filterText.toLowerCase()) ||
            subsetor.includes(filterText.toLowerCase()) ||
            segmento.includes(filterText.toLowerCase())
        );
    });

    const sortedAcoes = filteredAcoes.sort((a, b) => {
        if (sortConfig.direction === 'ascending') {
            return a[sortConfig.key] > b[sortConfig.key] ? 1 : -1;
        } else {
            return a[sortConfig.key] < b[sortConfig.key] ? 1 : -1;
        }
    });

    const getSortIndicator = (key) => {
        if (sortConfig.key === key) {
            return sortConfig.direction === 'ascending' ? '↑' : '↓';
        }
        return '';
    };

    return (
        <div>
            <input
                type="text"
                value={filterText}
                onChange={(e) => setFilterText(e.target.value)}
                placeholder="Filtrar por..."
                style={{ marginBottom: '10px' }}
            />
            <table style={{ width: '100%', borderCollapse: 'collapse', marginTop: '20px' }}>
                <thead>
                    <tr>
                        {['ticker', 'nome', 'setor', 'subsetor', 'segmento'].map((col) => (
                            <th
                                key={col}
                                style={{ border: '1px solid black', padding: '8px', textAlign: 'center', cursor: 'pointer' }}
                                onClick={() => requestSort(col)}
                            >
                                {col.charAt(0).toUpperCase() + col.slice(1)} {getSortIndicator(col)}
                            </th>
                        ))}
                    </tr>
                </thead>
                <tbody>
                    {sortedAcoes.map((acao) => (
                        <tr key={acao.ticker}>
                            {['ticker', 'nome', 'setor', 'subsetor', 'segmento'].map((col) => (
                                <td
                                    key={col}
                                    style={{ border: '1px solid black', padding: '8px', textAlign: 'center', cursor: col === 'ticker' ? 'pointer' : 'default', color: col === 'ticker' ? 'blue' : 'black' }}
                                    onClick={() => col === 'ticker' && handleTickerClick(acao[col])}
                                >
                                    {acao[col]}
                                </td>
                            ))}
                        </tr>
                    ))}
                </tbody>
            </table>
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
