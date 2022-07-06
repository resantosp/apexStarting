@isTest
public with sharing class AccountProcessorTest {
    @isTest
    public countContactsMethod() {
        Account acc = new Account();
        
        Contact ctt = new Contact;
        ctt.AccountId = acc.Id;

        Contact ctt2 = new Contact;
        ctt2.AccountId = acc.Id;

        List<Id> acctIds = new List<Id>();
        acctIds.add(acc.Id);





    }
}
