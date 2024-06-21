import React, { useState } from 'react';
import API_BASE_URL from '../apiConfig';

const SumForm = () => {
    const [num1, setNum1] = useState('');
    const [num2, setNum2] = useState('');
    const [resultado, setResultado] = useState(null);

    const handleSubmit = async (e) => {
        e.preventDefault();

        const response = await fetch(`${API_BASE_URL}/user/soma`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ num1: Number(num1), num2: Number(num2) }),
        });

        const data = await response.json();
        setResultado(data.resultado);
    };

    return (
        <div>
            <h1>Somar Números</h1>
            <form onSubmit={handleSubmit}>
                <div>
                    <label htmlFor="num1">
                        Número 1:
                        <input
                            type="number"
                            id="num1"
                            name="num1"
                            value={num1}
                            onChange={(e) => setNum1(e.target.value)}
                            autoComplete="off"
                        />
                    </label>
                </div>
                <div>
                    <label htmlFor="num2">
                        Número 2:
                        <input
                            type="number"
                            id="num2"
                            name="num2"
                            value={num2}
                            onChange={(e) => setNum2(e.target.value)}
                            autoComplete="off"
                        />
                    </label>
                </div>
                <button type="submit">Somar</button>
            </form>
            {resultado !== null && <h2>Resultado: {resultado}</h2>}
        </div>
    );
};

export default SumForm;