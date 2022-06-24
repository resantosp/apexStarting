public with sharing class AccountUtility {
    public AccountUtility() {
        public static void viewAnnualRevenue(){
            //create a List
            List<Account> accountsList = [SELECT Name, AnnualRevenue FROM Account];

            for (Account acc : accountsList){
                String acctRev = acc.Name + ' : ' + acc.AnnualRevenue;
                System.debug(acctRev);
            }

        }
    }
}
