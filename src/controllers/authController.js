const Cliente = require('../models/cliente');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

exports.register = async (req, res) => {
    try {
        const { nome, email, senha } = req.body;
        const hashedSenha = await bcrypt.hash(senha, 10);
        const cliente = await Cliente.create({ Nome: nome, Email: email, Senha: hashedSenha });
        res.status(201).json(cliente);
    } catch (error) {
        res.status(400).json({ error: error.message });
    }
};

exports.login = async (req, res) => {
    try {
        const { email, senha } = req.body;
        const cliente = await Cliente.findOne({ where: { Email: email } });
        if (!cliente || !await bcrypt.compare(senha, cliente.Senha)) {
            return res.status(401).json({ error: 'Email ou senha incorretos' });
        }
        const token = jwt.sign({ id: cliente.ClienteID }, 'secret', { expiresIn: '1h' });
        res.json({ token });
    } catch (error) {
        res.status(400).json({ error: error.message });
    }
};
