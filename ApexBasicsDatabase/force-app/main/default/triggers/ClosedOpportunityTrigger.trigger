trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    ClosedOpportunity.updateOpps(Trigger.New);
}