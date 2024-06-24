const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const Cliente = sequelize.define('Cliente', {
    ClienteID: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    Nome: {
        type: DataTypes.STRING,
        allowNull: false
    },
    Email: {
        type: DataTypes.STRING,
        unique: true,
        allowNull: false
    },
    Senha: {
        type: DataTypes.STRING,
        allowNull: false
    },
    Endereco: DataTypes.STRING,
    Cidade: DataTypes.STRING,
    Estado: DataTypes.STRING,
    Pais: DataTypes.STRING,
    CEP: DataTypes.STRING
}, {
    tableName: 'Clientes'
});

module.exports = Cliente;
