public without sharing class AddPrimaryContact implements Queueable {
    
    private Contact contact;
    private String state;

    public AddPrimaryContact(Contact ctt, String inputState) {

        this.contact = ctt;
        this.state = inputState;

    }

    public void execute(QueueableContext context){

        //Retrieve 200 Account record
        List<Account> accounts = [SELECT Id FROM Account WHERE BillingState = :state LIMIT 200];

        //Creating an empty list for contacts records
        List<Contact> contacts = new List<Contact>();

        for (Account acc : accounts){

            Contact contactClone = contact.clone();
            contactClone.AccountId = acc.Id;
            contacts.add(contactClone);
        }

        insert contacts;

    }
}
