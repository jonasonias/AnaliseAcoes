const mongoose = require('mongoose');

// Função para conectar a um banco de dados específico
function connectToDatabase(dbName) {
    const mongoUri = `mongodb+srv://jonasonias:918069@cluster0.7plyyiv.mongodb.net/${dbName}?retryWrites=true&w=majority&appName=Cluster0`;

    mongoose.connect(mongoUri, {
    }).then(() => {
        console.log(`Conectado ao MongoDB: ${dbName}`);
    }).catch(err => {
        console.error(`Erro ao conectar ao MongoDB: ${dbName}`, err);
    });
}

module.exports = { connectToDatabase };

