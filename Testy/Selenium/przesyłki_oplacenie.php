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
    $this->click("link=Przesyłki");
    $this->waitForPageToLoad("30000");
    $this->click("link=opłać i wyślij");
    $this->waitForPageToLoad("30000");
    $this->click("css=input.sbtn");
    $this->waitForPageToLoad("30000");
  }
}
?>