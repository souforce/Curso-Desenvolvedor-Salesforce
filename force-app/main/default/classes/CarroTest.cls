@IsTest
public without sharing class CarroTest {
    @IstTest
    public void carroTest() {

        //Carro carro = new Carro();
        //System.debug(carro.Cor);

        Carro carroAzul = new Carro('Azul', 'SUV');
        System.debug(carroAzul.Cor);
        System.debug(carroAzul.getTipoCarroceria());

    }
}
