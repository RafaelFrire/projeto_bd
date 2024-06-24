const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database');
const Carrinho = require('./carrinho');
const Produto = require('./produto');

const ItensCarrinho = sequelize.define('ItensCarrinho', {
    ItemID: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    CarrinhoID: {
        type: DataTypes.INTEGER,
        references: {
            model: Carrinho,
            key: 'CarrinhoID'
        }
    },
    ProdutoID: {
        type: DataTypes.INTEGER,
        references: {
            model: Produto,
            key: 'ProdutoID'
        }
    },
    Quantidade: {
        type: DataTypes.INTEGER,
        allowNull: false
    }
}, {
    tableName: 'ItensCarrinho'
});

ItensCarrinho.belongsTo(Carrinho, { foreignKey: 'CarrinhoID' });
ItensCarrinho.belongsTo(Produto, { foreignKey: 'ProdutoID' });

module.exports = ItensCarrinho;
