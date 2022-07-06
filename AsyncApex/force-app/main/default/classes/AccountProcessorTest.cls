@isTest
public with sharing class AccountProcessorTest {
    @isTest
    public static void countContactsMethod() {
        //Load test data
        List<Account> accounts = new List<Account>();
        for (Integer i=0; i<300; i++) {
            accounts.add(new Account(Name='Test Account' + i));
        }
        insert accounts;

        List<Contact> contacts = new List<Contact>();
        List<Id> accountIds = new List<Id>();
        for(Account acc: accounts){
            contacts.add(new Contact(FirstName=acc.Name, LastName='TestContact', AccountId=acc.Id));
            accountIds.add(acc.Id);
        }
        insert contacts;

        //Execute test
        Test.startTest();
        AccountProcessor.countContacts(accountIds);
        Test.stopTest();

        //Check results
        List<Account> accs = [SELECT Id, Number_Of_Contacts__c FROM Account];

        for (Account acc : accs){
            System.assertEquals(1, acc.Number_Of_Contacts__c);
        }
        
        //The code above had coverage of 80%
        /*Account acc = new Account();

        Contact ctt = new Contact();
        ctt.AccountId = acc.Id;

        Contact ctt2 = new Contact();
        ctt2.AccountId = acc.Id;

        List<Id> acctIds = new List<Id>();
        acctIds.add(acc.Id);

        //Execute test
        Test.startTest();
        AccountProcessor.countContacts(acctIds);
        Test.stopTest();

        //Check results
        List<Account> accList = [SELECT Number_Of_Contacts__c FROM Account WHERE Id = :acc.Id];

        for(Account account : accList){
            System.assertEquals(2, account.Number_Of_Contacts__c);
        }*/
    }
}
