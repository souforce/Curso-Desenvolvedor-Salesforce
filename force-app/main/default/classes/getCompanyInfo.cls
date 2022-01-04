public with sharing class getCompanyInfo {
    @InvocableMethod()
    public static void getCompanyInfo(List<Account> accs) {
        if (System.isFuture() || System.isBatch()) {
            return;
        }

        Integer maxAlloedPerMinute = 3; //API publica permite somente 3 request por minuto
        for (Account acc: accs) {
            if (maxAlloedPerMinute > 0) {
                updateCompanyInfo(acc.Id);
                maxAlloedPerMinute--;
            } else {
                //acc.PendenteConsultaReceita = true;
            }
        }

        //Cria uma Batch para atualizar isso de tempos em tempos
    }
    
    @future(Callout=true)
    public static void updateCompanyInfo(String Id) {
        Account acc = [SELECT Name, Razao_Social__c, BillingStreet, BillingCity, CNPJ__C FROM Account WHERE Id =:Id];

        //Remover . e - e / do CNPJ
        String cnpj = acc.CNPJ__c.replace('.', '').replace('/', '').replace('-', '');
        TOReceitaAPI result = ReceitaAPI.callReceitaAPI(cnpj);
        
        System.debug(result);

        acc.Name = result.nome;
        acc.Razao_Social__c = result.fantasia;
        acc.BillingStreet = result.logradouro;
        acc.BillingCity = result.municipio;
        //acc.PendenteConsultaReceita = false;

        update acc;
    }
}