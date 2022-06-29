trigger AccountAddressTrigger on Account (before insert, before update) {
    PostalCodeChanger.changeShippingAddress(Trigger.New);
}
