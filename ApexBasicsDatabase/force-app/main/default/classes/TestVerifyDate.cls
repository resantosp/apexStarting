@isTest
public with sharing class TestVerifyDate {
    @isTest
    private static void testCheckDates() {
        Date date2 = Date.today();
        Date date1 = Date.today() - 15;
        
        Date result = VerifyDate.CheckDates(date1, date2);

        System.assertEquals(date2, result);
    }
    @isTest
    private static void testCheckDatesElse(){
        Date date2 = Date.today();
        Date date1 = Date.today() - 60;
        
        Date result = VerifyDate.CheckDates(date1, date2);
        
        Integer totalDays = Date.daysInMonth(date1.year(), date1.month());
		Date lastDay = Date.newInstance(date1.year(), date1.month(), totalDays);

        System.assertEquals(lastDay, result);
    }
}