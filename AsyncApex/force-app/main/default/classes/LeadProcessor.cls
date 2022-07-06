public without sharing class LeadProcessor implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext dbc) {
        return Database.getQueryLocator([SELECT Id, Name FROM Lead]);
    }

    //Execute method
    public void execute(Database.BatchableContext dbc, List<Lead> leads){
        for (Lead l : leads){
            l.LeadSource = 'DreamForce';
        }
        update leads;
    }

    //Finish
    public void finish(Database.BatchableContext dbc){
        System.debug('Done');
    }
}
