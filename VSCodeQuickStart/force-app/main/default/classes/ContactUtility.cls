public with sharing class ContactUtility {
    public ContactUtility() {
        public static void viewContacts(){
            //Code for running the query and assigning the results to a new list
            List<Contact> listOfContacts = [SELECT FirstName, LastName FROM Contact];
            //Loop through the list to get the contacts and assign them into the new variable
            for (Contact con : listOfContacts){
                String fullName = 'First Name: ' + con.FirstName + ', Last Name: ' + con.LastName;
                //Plug the variable into the debug statement
                System.debug(fullName);
            }
        }

    }
}
