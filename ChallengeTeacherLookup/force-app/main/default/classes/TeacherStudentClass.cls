public with sharing class TeacherStudentClass {
    public static void increaseNoOfStudents(List<Student__c> stdList) { //after insert, after undelete
        List<Id> teacherIds = new List<Id>(); //create a list to store the id for the teachers - this list is a helper

        //create a for loop to insert the teacher of the students from trigger on the list of Ids
        for (Student__c student : stdList){
            teacherIds.add(student.Teacher__c);
        }

        List<Teacher__c> teacherList = new List<Teacher__c>(); //create a list to handle the teacher records to update - this list will be updated on the database

        //This for loop will query each one of the teachers inside the teacherIds list to get and update the field Number of Students
        for(Teacher__c teacher : [SELECT Number_of_Students__c FROM Teacher__c WHERE Id IN :teacherIds]){
            teacher.Number_of_Students__c += 1;

            teacherList.add(teacher);
        }

        //DML to update the teacher records on the list of teachers to update;
        update teacherList;
    }
    //Method for decreasing the number of students after deletion
    public static void decreaseNoOfStudents(List<Student__c> deletedStudentsList){
        List<Id> teacherIds = new List<Id>(); //create a list to store the id for the teachers - this list is a helper

        //create a for loop to insert the teacher of the students from trigger on the list of Ids
        for (Student__c student : deletedStudentsList){
            teacherIds.add(student.Teacher__c);
        }

        List<Teacher__c> teacherList = new List<Teacher__c>(); //create a list to handle the teacher records to update - this list will be updated on the database

        //This for loop will query each one of the teachers inside the teacherIds list to get and update the field Number of Students
        for(Teacher__c teacher : [SELECT Number_of_Students__c FROM Teacher__c WHERE Id IN :teacherIds]){
            teacher.Number_of_Students__c -= 1;

            teacherList.add(teacher);
        }

        //DML to update the teacher records on the list of teachers to update;
        update teacherList;
    }
}
