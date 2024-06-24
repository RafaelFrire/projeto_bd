const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const Fornecedor = sequelize.define('Fornecedor', {
    FornecedorID: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    Nome: {
        type: DataTypes.STRING,
        allowNull: false
    },
    Contato: DataTypes.STRING
}, {
    tableName: 'Fornecedores'
});

module.exports = Fornecedor;
