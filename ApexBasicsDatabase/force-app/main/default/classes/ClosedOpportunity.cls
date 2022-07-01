public with sharing class ClosedOpportunity {
    public static void updateOpps(List<Opportunity> oppsListFromTrigger) {
        List<Opportunity> oppList = new List<Opportunity>(); //List to store opps to update

        for(Opportunity opp : oppsListFromTrigger){
            if(opp.StageName == 'Closed Won'){
                Task t = new Task(Subject='Follow Up Test Task', WhatId=opp.Id);

                oppList.add(opp);
            }
        }

        if (oppList.size() > 0){
            update oppList;
        }

    }
}
