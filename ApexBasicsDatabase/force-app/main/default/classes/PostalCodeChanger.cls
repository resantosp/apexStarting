public with sharing class PostalCodeChanger {
    public static void changeShippingAddress(List<Account> acctList) {
        for (Account acct : acctList){
            if (acct.Match_Billing_Address__c == true){
                acct.ShippingPostalCode = acct.BillingPostalCode;
            }
        }
    }
}
