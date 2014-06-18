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
    $this->open("/index.php/przesylki");
    $this->click("link=Edytuj");
    $this->waitForPageToLoad("30000");
    $this->type("id=sb_users_username", "Adam Osiński");
    $this->select("id=sb_users_idstate", "label=dolnoslaskie");
    $this->type("id=sb_users_street", "Długa");
    $this->click("css=input[type=\"submit\"]");
    $this->waitForPageToLoad("30000");
  }
}
?>