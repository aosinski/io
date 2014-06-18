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
    $this->open("/index.php/");
    $this->click("id=spanLabel0");
    $this->type("id=email", "osa9113@wp.pl");
    $this->type("id=pass", "osinski1221");
    $this->click("css=input[type=\"submit\"]");
    $this->waitForPageToLoad("30000");
  }
}
?>