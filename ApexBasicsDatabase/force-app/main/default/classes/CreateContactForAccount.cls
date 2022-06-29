//When a new account is created, -> that's the trigger
//automatically create 3 contacts... One for Director, another for Sales Lead and one last one for Marketing lead. Make sure that these 3 contacts get linked to that new account.
public with sharing class CreateContactForAccount {
    public static void createContacts(List<Account> accList) { //creating method to receive the list from trigger
        //List<Account> accIds = [SELECT Id FROM Account];
        
        List<Contact> conList = new List<Contact>();

        for (Account a : accList){
            conList.add(LastName='Smith',
                        Title='Director');
            
        }
    }
}
