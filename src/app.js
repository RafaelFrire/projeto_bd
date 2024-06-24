const express = require('express');
const bodyParser = require('body-parser');
const sequelize = require('./config/database');
const app = express();

app.use(bodyParser.json());

app.use('/auth', require('./routes/authRoutes'));
app.use('/cart', require('./routes/cartRoutes'));
app.use('/products', require('./routes/productRoutes'));

sequelize.sync()
    .then(() => {
        console.log('Database & tables created!');
    });

module.exports = app;
