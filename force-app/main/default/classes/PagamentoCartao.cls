public with sharing class PagamentoCartao implements IPagamento {
    public PagamentoCartao() {

    }

    public Decimal cobrar(Decimal valorCompra, Decimal valorPago) {
        //Toda a regra de negocio de pagamento 

        return valorPago - valorCompra;
    }
}