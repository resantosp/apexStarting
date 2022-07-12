public with sharing class TeacherStudentTest {
    public static void increaseTest() {
        
        //Load the data test
        Teacher__c teacherTest = new Teacher__c();

        Student__c stdTest = new Student__c();
        stdTest.Teacher__c = teacherTest.Id;

        List<Student__c> stdListTest = new List<Student__c>;
        stdListTest.add(stdTest);

        //Execute test
        TeacherStudentClass.increaseNoOfStudents(stdListTest);

        //Check results


    }
}
