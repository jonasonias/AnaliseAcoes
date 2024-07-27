import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import API_BASE_URL from '../../apiConfig';
import CustomAlert from '../CustomAlert';

const GetAllAcoes = () => {
    const [acoes, setAcoes] = useState([]);
    const [valoresMercado, setValoresMercado] = useState({});
    const [alertMessage, setAlertMessage] = useState('');
    const [alertType, setAlertType] = useState('');
    const [sortConfig, setSortConfig] = useState({ key: 'ticker', direction: 'ascending' });
    const [filterText, setFilterText] = useState('');
    const navigate = useNavigate();

    const fetchAcoes = async () => {
        try {
            const response = await fetch(`${API_BASE_URL}/acoes/setores`);
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

    const fetchValoresMercado = async () => {
        try {
            const response = await fetch(`${API_BASE_URL}/acoes/atual`);
            if (response.ok) {
                const data = await response.json();
                const valores = data.reduce((acc, acao) => {
                    acc[acao.ticker] = acao.valormercado;
                    return acc;
                }, {});
                setValoresMercado(valores);
            } else {
                throw new Error('Erro ao buscar valores de mercado');
            }
        } catch (error) {
            console.error('Erro ao buscar valores de mercado:', error);
            setAlertMessage('Erro ao buscar valores de mercado');
            setAlertType('error');
        }
    };

    const handleTickerClick = (ticker) => {
        navigate(`/acoes/${ticker}`);
    };

    useEffect(() => {
        fetchAcoes();
        fetchValoresMercado();
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
            if (sortConfig.key === 'valormercado') {
                return (valoresMercado[a.ticker] || 0) - (valoresMercado[b.ticker] || 0);
            }
            return a[sortConfig.key] > b[sortConfig.key] ? 1 : -1;
        } else {
            if (sortConfig.key === 'valormercado') {
                return (valoresMercado[b.ticker] || 0) - (valoresMercado[a.ticker] || 0);
            }
            return a[sortConfig.key] < b[sortConfig.key] ? 1 : -1;
        }
    });

    const getSortIndicator = (key) => {
        if (sortConfig.key === key) {
            return sortConfig.direction === 'ascending' ? '↑' : '↓';
        }
        return '';
    };

    const formatNumber = (number) => {
        return new Intl.NumberFormat('pt-BR', {
            style: 'currency',
            currency: 'BRL',
            minimumFractionDigits: 2,
        }).format(number);  // Não remova o símbolo "R$"
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
                        {['ticker', 'nome', 'setor', 'subsetor', 'segmento', 'valormercado'].map((col) => (
                            <th
                                key={col}
                                style={{ border: '1px solid black', padding: '8px', textAlign: 'center', cursor: 'pointer' }}
                                onClick={() => requestSort(col)}
                            >
                                {col === 'valormercado' ? 'Valor de Mercado' : col.charAt(0).toUpperCase() + col.slice(1)} {getSortIndicator(col)}
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
                            <td
                                style={{ border: '1px solid black', padding: '8px', textAlign: 'center' }}
                            >
                                {valoresMercado[acao.ticker] && !isNaN(valoresMercado[acao.ticker]) ? formatNumber(valoresMercado[acao.ticker]) : ''}
                            </td>
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
