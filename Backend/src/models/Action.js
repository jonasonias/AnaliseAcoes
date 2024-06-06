const mongoose = require('mongoose');

const ActionSchema = new mongoose.Schema({
    code: { type: String, required: true },
    name: { type: String, required: true },
    price: { type: Number, required: true }
});

const Action = mongoose.model('Action', ActionSchema);

module.exports = Action;