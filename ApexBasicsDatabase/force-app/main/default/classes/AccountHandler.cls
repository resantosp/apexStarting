public with sharing class AccountHandler {
        //Create a class that INSERTS a NEW ACCOUNT named after a incoming parameter
        //Creating the method
        public static Account insertNewAccount(String newAccountName){

        Account newAcct = new Account();
        newAcct.Name = newAccountName;

        try {
            insert newAcct;
        } catch (Exception e) {
            return null;
        }
        return newAcct;
        //Inserting the new acct on the database
        

        //IF the account is sucssefully inserted, the method should RETURN the account record
        //IF a DML exception occurs, the method should return null
        

        }

}
