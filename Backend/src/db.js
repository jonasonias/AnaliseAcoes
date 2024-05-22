const mongoose = require('mongoose');

mongoose.connect('mongodb+srv://jonasonias:918069@cluster0.7plyyiv.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0', {
    useNewUrlParser: true,
    useUnifiedTopology: true
});

const db = mongoose.connection;

db.on('error', console.error.bind(console, 'Erro de conexão com o MongoDB:'));
db.once('open', () => {
    console.log('Conectado ao MongoDB');
});

module.exports = db;
