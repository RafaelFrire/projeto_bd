const Produto = require('../models/produto');
const Carrinho = require('../models/carrinho');
const ItensCarrinho = require('../models/itensCarrinho');

exports.addToCart = async (req, res) => {
    try {
        const { clienteID, produtoID, quantidade } = req.body;
        const produto = await Produto.findByPk(produtoID);
        if (produto.Estoque < quantidade) {
            return res.status(400).json({ error: 'Estoque insuficiente' });
        }
        let carrinho = await Carrinho.findOne({ where: { ClienteID: clienteID } });
        if (!carrinho) {
            carrinho = await Carrinho.create({ ClienteID: clienteID });
        }
        await ItensCarrinho.create({ CarrinhoID: carrinho.CarrinhoID, ProdutoID: produtoID, Quantidade: quantidade });
        await produto.update({ Estoque: produto.Estoque - quantidade });
        res.status(201).json({ message: 'Produto adicionado ao carrinho' });
    } catch (error) {
        res.status(400).json({ error: error.message });
    }
};

exports.removeFromCart = async (req, res) => {
    try {
        const { itemID } = req.body;
        const itemCarrinho = await ItensCarrinho.findByPk(itemID);
        if (!itemCarrinho) {
            return res.status(404).json({ error: 'Item do carrinho não encontrado' });
        }
        const produto = await Produto.findByPk(itemCarrinho.ProdutoID);
        await produto.update({ Estoque: produto.Estoque + itemCarrinho.Quantidade });
        await itemCarrinho.destroy();
        res.json({ message: 'Produto removido do carrinho' });
    } catch (error) {
        res.status(400).json({ error: error.message });
    }
};

exports.checkout = async (req, res) => {
    // Implementar lógica de checkout
};
