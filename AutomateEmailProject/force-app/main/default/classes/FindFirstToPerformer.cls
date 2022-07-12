public class FindFirstToPerformer {
	private final List<trailheadapp__Trailhead_User_Data__c> topPerformer;
    
    public findFirstToPerformer(){
        topPerformer = [SELECT Name, trailheadapp__Avatar__c
                      FROM trailheadapp__Trailhead_User_Data__c 
                      ORDER BY trailheadapp__Total_Points__c DESC 
                      LIMIT 1];
            }//end method
    
    public List<trailheadapp__Trailhead_User_Data__c> getTopPerformer(){
        return topPerformer;
    }//end method
}