public with sharing class AccountProcessor {
    @future
    public static void countContacts(List<Id> acctIds) {
        


        for (Id accId : acctIds){
            List<Account> accList = [SELECT (SELECT Id FROM Contacts) FROM Account WHERE Id = :accId];

            for(Account acc : accList){
                acc.Number_Of_Contacts__c = acc.Contacts.size();
            }
        }

        update accList;

        /*for (Account acc : acctIds){
            for (Contact ctt : [SELECT (SELECT Id FROM Contacts) FROM Account WHERE Id = :acc.Id]){
                acc.Number_Of_Contacts__c += 1;
            }
        }*/
    }
}
