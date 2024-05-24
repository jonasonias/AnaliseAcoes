// frontend/src/components/SumForm.js
import React, { useState } from 'react';

const SumForm = () => {
    const [num1, setNum1] = useState('');
    const [num2, setNum2] = useState('');
    const [resultado, setResultado] = useState(null);

    const handleSubmit = async (e) => {
        e.preventDefault();

        const response = await fetch('http://localhost:3001/soma', {
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
                    <label>
                        Número 1:
                        <input
                            type="number"
                            value={num1}
                            onChange={(e) => setNum1(e.target.value)}
                        />
                    </label>
                </div>
                <div>
                    <label>
                        Número 2:
                        <input
                            type="number"
                            value={num2}
                            onChange={(e) => setNum2(e.target.value)}
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
