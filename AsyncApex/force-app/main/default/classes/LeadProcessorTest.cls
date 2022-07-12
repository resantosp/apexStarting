@isTest
private with sharing class LeadProcessorTest {
    @isTest
    private static void LeadProcessorTest() {
        //Load test data
        List<Lead> leads = new List<Lead>();
        for (Integer i=0; i<200; i++){
            leads.add(new Lead(LastName='Santos', Company='Wipro'));
        }
        insert leads;

        //Execute the test
        Test.startTest();
        LeadProcessor lp = new LeadProcessor(); //instance for the batch class
        Id batchId = Database.executeBatch(lp, 200); //this method expects the instance of a batch class -> lp
        Test.stopTest();

        //Check the result
        List<Lead> updatedLeads = [SELECT Id FROM Lead WHERE LeadSource = 'Dreamforce'];
        System.assertEquals(200, updatedLeads.size(), 'ERROR: At least 1 Lead record not updated correctly');
    }
}
