public with sharing class PagamentoDinheiro implements IPagamento {
    public PagamentoDinheiro() {

    }

    public Decimal cobrar(Decimal valorCompra, Decimal valorPago) {
        //Toda a regra de negocio de pagamento 

        return valorPago - valorCompra;
    }
}