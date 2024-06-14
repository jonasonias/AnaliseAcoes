import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import API_BASE_URL from '../../apiConfig';
import CustomAlert from '../CustomAlert'; // Importe o componente CustomAlert

const GetAllAcoes = () => {
    const [acoes, setAcoes] = useState([]);
    const [alertMessage, setAlertMessage] = useState('');
    const [alertType, setAlertType] = useState('');
    const [sortConfig, setSortConfig] = useState({ key: null, direction: 'ascending' });
    const [filterText, setFilterText] = useState(''); // Estado para o texto de filtro
    const navigate = useNavigate();

    // Função para buscar as ações na API
    const fetchAcoes = async () => {
        try {
            const response = await fetch(`${API_BASE_URL}/acoes`);
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

    // Função para ordenar os dados da tabela
    const requestSort = (key) => {
        let direction = 'ascending';
        if (sortConfig.key === key && sortConfig.direction === 'ascending') {
            direction = 'descending';
        }
        setSortConfig({ key, direction });
    };

    // Função para filtrar os dados com base no valor de mercado
    const filteredAcoes = acoes.filter((acao) => {
        return (
            acao.ticker.toLowerCase().includes(filterText.toLowerCase()) ||
            acao.nome.toLowerCase().includes(filterText.toLowerCase()) ||
            acao.setordeatuacao.toLowerCase().includes(filterText.toLowerCase()) ||
            acao.subsetordeatuacao.toLowerCase().includes(filterText.toLowerCase()) ||
            acao.segmentodeatuacao.toLowerCase().includes(filterText.toLowerCase()) ||
            acao.valordemercado.toLowerCase().includes(filterText.toLowerCase())
        );
    });

    // Função para ordenar os dados com base na configuração de ordenação
    const sortedAcoes = filteredAcoes.sort((a, b) => {
        if (sortConfig.direction === 'ascending') {
            return a[sortConfig.key] > b[sortConfig.key] ? 1 : -1;
        } else {
            return a[sortConfig.key] < b[sortConfig.key] ? 1 : -1;
        }
    });

    return (
        <div>
            <h2>Lista de Ações</h2>
            {/* Adicione um campo de input para filtrar */}
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
                        <th style={{ border: '1px solid black', padding: '8px' }} onClick={() => requestSort('ticker')}>
                            Ticker
                        </th>
                        <th style={{ border: '1px solid black', padding: '8px' }} onClick={() => requestSort('nome')}>
                            Nome
                        </th>
                        <th style={{ border: '1px solid black', padding: '8px' }} onClick={() => requestSort('setordeatuacao')}>
                            Setor de Atuação
                        </th>
                        <th style={{ border: '1px solid black', padding: '8px' }} onClick={() => requestSort('subsetordeatuacao')}>
                            Subsetor de Atuação
                        </th>
                        <th style={{ border: '1px solid black', padding: '8px' }} onClick={() => requestSort('segmentodeatuacao')}>
                            Segmento de Atuação
                        </th>
                        <th style={{ border: '1px solid black', padding: '8px' }} onClick={() => requestSort('valordemercado')}>
                            Valor de Mercado
                        </th>
                    </tr>
                </thead>
                <tbody>
                    {sortedAcoes.map((acao) => (
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