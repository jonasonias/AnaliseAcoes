const express = require('express');

const app = express();

app.use(express.json());

// Rota inicial
app.get('/', (req, res) => {
    res.send('Servidor Express está funcionando!');
});

app.post('/soma', (req, res) => {
    // Extrair os números do corpo da solicitação
    const { num1, num2 } = req.body;

    // Verificar se os números foram fornecidos
    if (!num1 || !num2) {
        return res.status(400).send('Por favor, forneça ambos os números');
    }

    // Converter os números para valores numéricos
    const numero1 = parseFloat(num1);
    const numero2 = parseFloat(num2);

    // Verificar se os números são válidos
    if (isNaN(numero1) || isNaN(numero2)) {
        return res.status(400).send('Os números fornecidos não são válidos');
    }

    // Calcular a soma
    const resultado = numero1 + numero2;

    // Enviar o resultado de volta para o frontend
    res.json({ resultado });
});

// Iniciar o servidor
const PORT = process.env.PORT || 3000; // Porta padrão 3000
app.listen(PORT, () => {
    console.log(`Servidor Express rodando na porta ${PORT}`);
});
