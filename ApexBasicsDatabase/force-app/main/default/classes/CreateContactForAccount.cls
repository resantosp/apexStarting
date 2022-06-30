//When a new account is created, -> that's the trigger
//automatically create 3 contacts... One for Director, another for Sales Lead and one last one for Marketing lead. Make sure that these 3 contacts get linked to that new account.
public with sharing class CreateContactForAccount {
    public static void createContacts(List<Account> accList) { //creating method to receive the list from trigger
        
        List<Contact> conList = new List<Contact>();

        for (Account a : accList){
            Contact con1 = new Contact(LastName='LN1', Title='Director', AccountId=a.Id);
            conList.add(con1);
            Contact con2 = new Contact(LastName='LN2', Title='Marketing Lead', AccountId=a.Id);
            conList.add(con2);
            Contact con3 = new Contact(LastName='LN3', Title='Sales Lead', AccountId=a.Id);
            conList.add(con3);
        }//End for loop

        insert conList;
    }//End the method
}//End the class
