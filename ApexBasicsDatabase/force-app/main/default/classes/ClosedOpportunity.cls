public with sharing class ClosedOpportunity {
    public static void updateOpps(List<Opportunity> oppsListFromTrigger) {
        List<Task> taskList = new List<Task>(); //List to store opps to update

        for(Opportunity opp : oppsListFromTrigger){
            if(opp.StageName == 'Closed Won'){
                Task t = new Task(Subject='Follow Up Test Task', WhatId=opp.Id);

                taskList.add(t);
            }
        }

        if (taskList.size() > 0){
            insert taskList;
        }

    }
}
