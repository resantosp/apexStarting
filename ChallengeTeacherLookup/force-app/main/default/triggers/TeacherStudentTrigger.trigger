trigger TeacherStudentTrigger on Student__c (after insert, after delete, after undelete) {
    if ((Trigger.isInsert && Trigger.isAfter) || (Trigger.isUndelete && Trigger.isAfter)){
        for (Student__c student : Trigger.new){
            Student__c stdOnTrigger = [SELECT Teacher__r.Number_of_Students__c FROM Student__c WHERE Id = :student.Id];

            stdOnTrigger.Teacher__r.Number_of_Students__c += 1;

            update stdOnTrigger.Teacher__r;
        }
    }
    if(Trigger.isDelete && Trigger.isAfter){
        for (Student__c student : Trigger.old){
            Student__c stdOnTrigger = [SELECT Teacher__r.Number_of_Students__c FROM Student__c WHERE Id = :student.Id AND IsDeleted = true ALL ROWS];

            stdOnTrigger.Teacher__r.Number_of_Students__c -= 1;

            update stdOnTrigger.Teacher__r;
        }
    }
}