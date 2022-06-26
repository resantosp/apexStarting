public with sharing class PropertyUtility {
    public PropertyUtility() {
        public static void newListedProperties{
            List<Property__c> newPropList = [SELECT Name, Broker__r.Email__c, Days_On_Market__c FROM Property__c];


        }

    }
}
