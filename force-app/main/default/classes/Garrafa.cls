public virtual with sharing class Garrafa {
    protected String TipoDeRosca;

    public Garrafa() {
        TipoDeRosca = 'Padrão';
    }

    public virtual void abrirGarrafa() {
        System.debug(TipoDeRosca);
        System.debug('Gire a tampa para a esquerda');
    }
}