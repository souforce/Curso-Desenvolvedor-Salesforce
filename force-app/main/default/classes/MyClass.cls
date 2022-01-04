public with sharing class MyClass {
    // @AuraEnabled
    // public static List<Aeroporto__c> getAeroportos(String search) {
    //     search += '%';
    //     return [SELECT Id, Name, Estado__r.Name, Sigla__c 
    //             FROM Aeroporto__c
    //             WHERE Name like :search OR 
    //             Estado__r.Name LIKE :search OR 
    //             Sigla__c LIKE :search
    //             WITH SECURITY_ENFORCED];
    // }

    // @AuraEnabled
    // public static String getVoos(String aeroportoOrigem, String aeroportoDestino, String dataPartida, String dataRetorno) {
    //     Date dtPartida = dateParse(dataPartida);
    //     Date dtRetorno = dateParse(dataRetorno);

    //     List<Voo__c> origem = [SELECT Id, Name, Aeroporto_Chegada__r.Sigla__c, Aeroporto_Partida__r.Sigla__c, Duracao__c, Valor__c
    //                             FROM Voo__c
    //                             WHERE Data_Partida__c =: dtPartida AND Aeroporto_Partida__c =: aeroportoOrigem AND Aeroporto_Chegada__c =:aeroportoDestino
    //                             WITH SECURITY_ENFORCED];

    //     List<Voo__c> destino = [SELECT Id, Name, Aeroporto_Chegada__r.Sigla__c, Aeroporto_Partida__r.Sigla__c, Duracao__c, Valor__c
    //                             FROM Voo__c
    //                             WHERE Data_Partida__c =: dtRetorno AND Aeroporto_Partida__c =: aeroportoDestino  AND Aeroporto_Chegada__c =: aeroportoOrigem
    //                             WITH SECURITY_ENFORCED];

    //     Map<Voo__c, Voo__c> result = new Map<Voo__c, Voo__c>();
    //     for(Voo__c vooOrigem : origem) {
    //         for(Voo__c vooDestino : destino) {
    //             result.put(vooOrigem, vooDestino);
    //         }
    //     }

    //     return JSON.serialize(result);
    // }

    // public static Date dateParse(String dateString) {
    //     List<String> dt = dateString.split('-');
    //     Date dtResult = Date.newInstance(Integer.valueOf(dt.get(0)), Integer.valueOf(dt.get(1)), Integer.valueOf(dt.get(2)));

    //     return dtResult;
    // }   
    
    // @AuraEnabled
    // public static Ticket__c createTicket(String accountId, String vooIda, String vooVolta) {
    //     if (Schema.SObjectType.Ticket__c.isCreateable()) {
    //         Ticket__c ticket = new Ticket__c();
            
    //         if (Schema.SObjectType.Ticket__c.fields.Voo_Ida__c.isCreateable()) {
    //             ticket.Voo_Ida__c = vooIda;
    //         }
            
    //         if (Schema.SObjectType.Ticket__c.fields.Voo_Volta__c.isCreateable()) {
    //             ticket.Voo_Volta__c = vooVolta;
    //         }
    
    //         insert ticket;
    //         return ticket;
    //     } else {
    //         throw new AuraHandledException('Você não tem permissão para criar um Ticket');
    //     }
    // }
}
