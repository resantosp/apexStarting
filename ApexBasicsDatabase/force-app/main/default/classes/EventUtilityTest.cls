@isTest
public with sharing class EventUtilityTest {
    @isTest
    private static void test1() {
        String res = EventUtility.eventPriority('BRA');
        System.assertEquals(null, res);
    }
    @isTest
    private static void test2(){
        String res1 = EventUtility.eventPriority('CA');
        System.assertEquals('High', res1);
    }
    @isTest
    private static void test3(){
        String res2 = EventUtility.eventPriority('NE');
        System.assertEquals('Medium', res2);
    }
}
