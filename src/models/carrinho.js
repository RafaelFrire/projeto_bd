const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database');
const Cliente = require('./cliente');

const Carrinho = sequelize.define('Carrinho', {
    CarrinhoID: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    ClienteID: {
        type: DataTypes.INTEGER,
        references: {
            model: Cliente,
            key: 'ClienteID'
        }
    }
}, {
    tableName: 'Carrinhos'
});

Carrinho.belongsTo(Cliente, { foreignKey: 'ClienteID' });

module.exports = Carrinho;
