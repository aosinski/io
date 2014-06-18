<?php
class Example extends PHPUnit_Extensions_SeleniumTestCase
{
  protected function setUp()
  {
    $this->setBrowser("*chrome");
    $this->setBrowserUrl("http://globalbox.pl/");
  }

  public function testMyTestCase()
  {
    $this->open("/");
    $this->click("id=spanLabel0");
    $this->type("id=wycena_waga", "25");
    $this->click("id=wycena_firma_1");
    $this->click("css=label > img");
    $this->click("id=spanLabel1");
    $this->type("id=wycena_wys", "15");
    $this->type("id=wycena_szer", "18");
    $this->type("id=wycena_dl", "12");
    $this->click("id=recalculate");
    $this->waitForPageToLoad("30000");
    $this->click("name=services[return]");
    $this->click("name=services[confirm]");
    $this->click("name=services[insurance]");
    $this->type("id=INSURANCE_amount", "1000");
    $this->click("name=services[pobrania]");
    $this->click("//div[@id='CarrierServices']/label[7]");
    $this->click("name=services[pobrania]");
    $this->click("//div[@id='CarrierServices']/label[7]");
    $this->click("id=OpcjePrzesylkiNext");
    $this->waitForPageToLoad("30000");
    $this->type("id=sb_recipients_recipient_name", "Jan Kowalski");
    $this->type("id=sb_recipients_postal", "20-200");
    $this->type("id=sb_recipients_city", "Warszawa");
    $this->type("id=sb_recipients_street", "Krótka");
    $this->type("id=sb_recipients_house", "12/24");
    $this->type("id=sb_recipients_email", "misiuuumisiuuuu1234@wp.pl");
    $this->type("id=sb_recipients_telefon", "721213412");
    $this->type("id=sb_recipients_email", "misiu1234@wp.pl");
    $this->click("css=input.sbtn");
    $this->waitForPageToLoad("30000");
    $this->click("css=input.sbtn");
    $this->waitForPageToLoad("30000");
  }
}
?>