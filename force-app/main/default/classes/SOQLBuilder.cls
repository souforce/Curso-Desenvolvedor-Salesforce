public with sharing class SOQLBuilder {
    public SOQLBuilder() {

    }

    public static String queryAll(String sObjectName) {
        String query = 'SELECT ';
        query += String.join(new List<String>(getObjectInfo(sObjectName).keySet()), ',');
        query += ' FROM ' + sObjectName;

        return query;
    }

    private static Map<String, Schema.SObjectField> getObjectInfo(String sObjectName) {
        Schema.DescribeSObjectResult d = Schema.getGlobalDescribe().get(sObjectName).getDescribe();
        Map<String, Schema.SObjectField> result = new Map<String, Schema.SObjectField>();
        
        for(String fieldName : d.fields.getMap().keySet()) {
            Schema.SObjectField field = d.fields.getMap().get(fieldName);

            if (field.getDescribe().isAccessible() && !field.getDescribe().isDeprecatedAndHidden()) {
                result.put(fieldName, field);
            }
        }

        return result;
    }
    /*
    String q = SOQLBuilder.queryAll('Contact');
    List<SObject> result = Database.query(q);
    System.debug(result);
    */
    
}