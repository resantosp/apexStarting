public with sharing class ContactSearch {
    public static List<Contact> searchForContacts(String lastNameContact, String mailingPostalC) {
        List<Contact> contactList = [SELECT Name FROM Contact WHERE (LastName = :lastNameContact AND MailingPostalCode = :mailingPostalC)];

        return contactList;
    }
}
