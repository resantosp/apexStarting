public with sharing class AccountProcessor {
    @future
    public static void countContacts(List<Id> acctIds) {
        
        List<Account> accList = [SELECT (SELECT Id FROM Contacts) FROM Account WHERE Id in :acctIds];

        for(Account acc : accList){
                acc.Number_Of_Contacts__c = acc.Contacts.size();
        }

        update accList;

    }
}
