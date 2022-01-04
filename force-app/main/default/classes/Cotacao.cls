public with sharing class Cotacao {
    public String code;         //Moeda de Origem
    public String codein;       //Moeda de Destino
    public String name;         //Nome da Moeda
    public String high;         //Maior preco do dia
    public String low;          //Menor preço do dia
    public String varBid;       //Variação monetária
    public String pctChange;    //Percentual da Variação
    public String bid;          //Valor de Compra
    public String ask;          //Valor de Venda
    public String timestamp;    //Data da Cotação em Timestamp
    public String create_date;  //Data da Cotação

    public static List<Cotacao> parse(String jsonString) {
        return (List<Cotacao>)JSON.deserialize(jsonString, List<Cotacao>.class);
    }
}
