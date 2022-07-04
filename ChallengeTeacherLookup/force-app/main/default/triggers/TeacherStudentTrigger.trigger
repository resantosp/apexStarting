trigger TeacherStudentTrigger on Student__c (after insert, after delete, after undelete) {
    if ((Trigger.isInsert && Trigger.isAfter) || (Trigger.isUndelete && Trigger.isAfter)){
        TeacherStudentClass.increaseNoOfStudents(Trigger.new);
        //See: Trigger.new returns a list of sObjects that can only be modified in before triggers BUT we don't aim to modify the record, so it's ok to use it in here
    }
    if(Trigger.isDelete && Trigger.isAfter){
        TeacherStudentClass.decreaseNoOfStudents(Trigger.old);
        //See: Trigger.old returns old values of the records that triggered the code... It returns the OLD values that were already in the fields (it can be used in Delete and Update triggers)
    }
}