const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database');
const Categoria = require('./categoria');
const Fornecedor = require('./fornecedor');

const Produto = sequelize.define('Produto', {
    ProdutoID: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    Nome: {
        type: DataTypes.STRING,
        allowNull: false
    },
    Descricao: DataTypes.TEXT,
    Preco: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: false
    },
    CategoriaID: {
        type: DataTypes.INTEGER,
        references: {
            model: Categoria,
            key: 'CategoriaID'
        }
    },
    FornecedorID: {
        type: DataTypes.INTEGER,
        references: {
            model: Fornecedor,
            key: 'FornecedorID'
        }
    },
    Estoque: {
        type: DataTypes.INTEGER,
        allowNull: false
    }
}, {
    tableName: 'Produtos',
    timestamps: false,
});

Produto.belongsTo(Categoria, { foreignKey: 'CategoriaID' });
Produto.belongsTo(Fornecedor, { foreignKey: 'FornecedorID' });

module.exports = Produto;
