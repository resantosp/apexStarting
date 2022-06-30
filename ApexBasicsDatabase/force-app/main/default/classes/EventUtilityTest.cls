@isTest
public with sharing class EventUtilityTest {
    @isTest
    private static void testEmptyOrLong() {
        String res = EventUtility.eventPriority('BRA');
        System.assertEquals(null, res);
    }
    @isTest
    private static void testHighPriority(){
        String res1 = EventUtility.eventPriority('CA');
        System.assertEquals('High', res1);
    }
    @isTest
    private static void testMediumPriority(){
        String res2 = EventUtility.eventPriority('NE');
        System.assertEquals('Medium', res2);
    }
}
