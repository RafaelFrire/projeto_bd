const { Sequelize } = require('sequelize');

const sequelize = new Sequelize('prj_bd', 'root', 'admin', {
    host: 'localhost',
    dialect: 'mysql'
});

module.exports = sequelize;
