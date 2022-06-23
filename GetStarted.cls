public class StringArrayTest {
    public static List<String> generateStringArray(Integer numberOfStrings)
    {
        List<String> testList = new List<String>();
        
        String itemOfList = 'Test';
        Integer i;
        
        for (i = 0; i < numberOfStrings; i++)
        {
            itemOfList = 'Test ' + i;
            
            testList.add(itemOfList);
        }
        
        return testList;
    }

}