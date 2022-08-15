public with sharing class NewCaseListController {
    public List<Case> getNewCases() {
        List<Case> CaseList = [SELECT Id, CaseNumber FROM Case WHERE Status='New'];
        return CaseList;
    }
}
