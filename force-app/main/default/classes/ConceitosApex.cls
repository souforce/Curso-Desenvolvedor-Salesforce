public with sharing class ConceitosApex {
    private String conceito = 'Conceitos de Apex';

    public transient String Oculto;
    public String Visivel;

    public ConceitosApex(String conceito) {
        this.conceito = conceito;
    }

    public ConceitosApex() {
        this('Novo');
    }

    public void NovoConceito(String conceito) {
        this.conceito = conceito;
        this.Oculto = 'x';
        this.Visivel = 'y';
    }

    public void showConceito() {
        NovoConceito('Aqui existe o conceito de Transient');
        System.debug(this.Oculto);
        System.debug(JSON.serialize(this));
    }

    public void fazerPizza(Object pizza) {
        Boolean isPizza = pizza instanceof Pizza;

        if (!isPizza) {
            throw new PizzaException('Isso não é uma pizza');
        } else {
            ((Pizza)pizza).prepararPizza();
        }
    }

    public void testandoMetodo() {
        Portuguesa pizza = new Portuguesa();
        fazerPizza(pizza);
    }

    public class PizzaException extends Exception {}
}

// ConceitosApex c = new ConceitosApex(); c.testandoMetodo();