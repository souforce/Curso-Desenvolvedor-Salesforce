public with sharing class getAccountInfo {
    
    @AuraEnabled
    public static void updateAccountInfo(String accountId){
        Account acc = [SELECT Id, Name, BillingCity, BillingCountry, BillingState, 
                              BillingStreet, CNPJ__c, Razao_Social__c, Status__c, 
                              Message__c, Tipo__c
                        FROM Account
                        WHERE Id =: accountId];

        String cnpjReplaced = acc.CNPJ__c.replace('.','').replace('/','').replace('-','');
        TOReceitaAPI result = ReceitaAPI.callReceitaAPI(cnpjReplaced);

        //System.debug(result);

        acc.Name = result.nome;
        acc.BillingCity = result.municipio;
        acc.BillingStreet = result.logradouro;
        acc.BillingCountry = result.uf;
        acc.Razao_Social__c = result.fantasia;
        acc.Status__c = result.status;
        acc.Message__c = result.message;
        acc.Tipo__c = result.tipo;

        update acc;
    }

}