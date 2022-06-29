public with sharing class ContactAndLeadSearch {

    public static List<List<sObject>> searchContactsAndLeads(String lastNameSearch) {
        List<List<sObject>> searchList = [FIND :lastNameSearch IN ALL FIELDS RETURNING Lead(FirstName,LastName), Contact(FirstName,LastName)];

        return searchList;
    }
}
