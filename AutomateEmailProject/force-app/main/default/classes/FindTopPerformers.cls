public class FindTopPerformers {
    public final List<trailheadapp__Trailhead_User_Data__c> topPerform;
    
    public findTopPerformers(){
        topPerform = [SELECT Name, trailheadapp__Total_Points__c, trailheadapp__Profile_URL__c
                      FROM trailheadapp__Trailhead_User_Data__c 
                      ORDER BY trailheadapp__Total_Points__c DESC 
                      LIMIT 3];
            }//end method
    
    public List<trailheadapp__Trailhead_User_Data__c> getTopPerformers(){
        return topPerform;
    }//end method
}//end class