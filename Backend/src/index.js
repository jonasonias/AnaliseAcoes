const express = require('express');
const cors = require('cors');
const serveFavicon = require('serve-favicon');
const userRoutes = require('./modules/userRoutes');
const acoesRoutes = require('./modules/acoesRoutes');
const multiplosRoutes = require('./modules/multiplosRoutes');

const app = express();

app.use(cors({ origin: true, credentials: true }));
app.use(express.json());

app.use(serveFavicon('C:\\Users\\jonas\\Documents\\stocksSiteAWS\\Backend\\public\\favicon.ico'));

app.get('/', (req, res) => {
    res.send('Servidor Express está funcionando!');
});

app.use('/user', userRoutes);
app.use('/acoes', acoesRoutes);
app.use('/multiplos', multiplosRoutes);

const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
    console.log(`Servidor Express rodando na porta ${PORT}`);
});