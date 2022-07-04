trigger TeacherStudentTrigger on Student__c (after insert, after delete, after undelete) {
    if ((Trigger.isInsert && Trigger.isAfter) || (Trigger.isUndelete && Trigger.isAfter)){
        TeacherStudentClass.increaseNoOfStudents(Trigger.new);
    }
    if(Trigger.isDelete && Trigger.isAfter){
        TeacherStudentClass.decreaseNoOfStudents(Trigger.old);
    }
}