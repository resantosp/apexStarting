trigger TriggerToAccount on Account (after insert) {
    CreateContactForAccount.createContacts(Trigger.New);
}