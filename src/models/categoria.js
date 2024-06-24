const { Sequelize, DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const Categoria = sequelize.define('Categoria', {
    CategoriaID: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    Nome: {
        type: DataTypes.STRING,
        allowNull: false
    }
}, {
    tableName: 'Categorias'
});

module.exports = Categoria;
