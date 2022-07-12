public class SendEmail {
    public static void sendmailMethod(){
        
        //Getting the data for the attachment
        List<trailheadapp__User_Badge__c> top = [SELECT trailheadapp__User__r.Name, trailheadapp__Badge__r.Name, trailheadapp__First_Attempted_Date__c, trailheadapp__Last_Attempted_Date__c, trailheadapp__Status__c 
                                                          FROM trailheadapp__User_Badge__c
                                                          WHERE trailheadapp__Last_Attempted_Date__c = LAST_N_DAYS:7
                                                          ORDER BY trailheadapp__Last_Attempted_Date__c DESC];
        
        string header = 'Name, Badge, First Attempted Date, Last Attempted Date, Status, User Id\n'; //setting the header of the table
        string finalstr = header;
        for (trailheadapp__User_Badge__c user : top){
            string recordString = user.trailheadapp__User__r.Name+','+user.trailheadapp__Badge__r.Name+','+user.trailheadapp__First_Attempted_Date__c+','+user.trailheadapp__Last_Attempted_Date__c+','+user.trailheadapp__Status__c+','+user.Id+'\n';
            finalstr = finalstr +recordString;
        }
        
        //Get fields from the recipient for the email
        Contact ctt = [SELECT Name, Email FROM Contact WHERE LastName='Garcia'];
        
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();//instanciating single email message
        email.setTargetObjectId(ctt.Id);//set the target for the template since it does not work without this call
        email.setSenderDisplayName('Company Support for Trailhead');//set the sender display name
        
        //Set attachment config
        Messaging.EmailFileAttachment csvAttc = new Messaging.EmailFileAttachment();
        blob csvBlob = Blob.valueOf(finalstr);
        string csvname= 'Team Trailhead Performance.csv';
        csvAttc.setFileName(csvname);
        csvAttc.setBody(csvBlob);
        email.setFileAttachments(new Messaging.EmailFileAttachment[]{csvAttc});
        
        //Get the desired template for the email using SOQL
        EmailTemplate emailTemplate = [Select Id,Subject,Description,HtmlValue,DeveloperName,Body from EmailTemplate where name = 'Test Template 4'];
        email.setTemplateID(emailTemplate.Id);//set the template created for the email i'm going to send
        email.setTreatTargetObjectAsRecipient(true);//set to treat the target object (ctt.Id) as the recipient for the email
        
        Messaging.sendEmail(New Messaging.SingleEmailMessage[]{email});//send the email
        
    }//end method
    
}//end class