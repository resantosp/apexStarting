public class SendEmailSched implements Schedulable{ //implementing schedulable class
    public void execute(SchedulableContext sc){ //needed execute method for schedulable class
        
        SendEmail.sendmailMethod(); //calling the class and method to send the email
        
     /* String sendEmailCron = '0 0 8 * * ? 2022'; //setting the CRON expression to 8 AM, everyday, every month, 
      												 *? for day of the week, year 2022 

		System.schedule('Schedule Test', sendEmailCron, new SendEmailSched()); //calling the method, giving CRON exp 
																			   and instanciating THIS schedulable class */
    }
}