public with sharing class BulkDMLTest {
    public BulkDMLTest() {
        //Create a list of contacts
        List<Contact> conList = new List<Contact>{
            new Contact(FirstName='Jor', LastName='Smith',Department='Finance'),
            new Contact(FirstName='Kathy',LastName='Smith',Department='Technology'),
            new Contact(FirstName='Caroline',LastName='Roth',Department='Finance'),
            new Contact(FirstName='Kim',LastName='Shain',Department='Education')
        };
        
        //Bulk insert all contacts with one DML call
        insert conList;

        //List to hold the new contacts to update
        List<Contact> listToUpdate = new List<Contact>();

        //Iterate through the list and add a tittle only if the departmente is Finance
        for (Contact con : conList){
            if(con.Department == 'Finance'){
                con.Title = 'Finance Analyst';

                //Add updated contact sObject to the list
                listToUpdate.add(con);
            }
        }

        //Bulk update all contacts with one DML call
        update listToUpdate;

    }
}
