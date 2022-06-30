public with sharing class EventUtility {
    public static String eventPriority(String eventStatus) {

        String ePriority; //Variable to set up the priority

        if (String.isBlank(eventStatus) || eventStatus.length() > 2){ //Check if is blank OR longer than 2 characters
            return null;
        } else if(eventStatus == 'CA'){
            ePriority = 'High';
        }else{
            ePriority = 'Medium';
        }

        return ePriority;

    }
}