<?php
//
//use Behat\Behat\Tester\Exception\PendingException;
//use Behat\Behat\Context\Context;
//use Behat\Gherkin\Node\PyStringNode;
//use Behat\Gherkin\Node\TableNode;
//use Behat\MinkExtension\Context\MinkContext;
//use Behat\MinkExtension\Context\RawMinkContext;

use Behat\Behat\Tester\Exception\PendingException;
use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\MinkExtension\Context\RawMinkContext;
use Behat\MinkExtension\Context\MinkContext;
use Behat\Testwork\Hook\Scope\BeforeSuiteScope;
use Behat\Testwork\Hook\Scope\AfterSuiteScope;
/**
 * Defines application features from the specific context.
 */

class FeatureContext extends RawMinkContext implements Context
{

    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {
    }


    /**
     * @Given step with :arg1 argument
     */
    public function stepWithArgument($arg1)
    {
        throw new PendingException();
    }

    /**
     * @Given number step with :arg1
     */
    public function numberStepWith($arg1)
    {
        throw new PendingException();
    }

    /**
     * @Given I have :arg1 friends
     */
    public function iHaveFriends($arg1)
    {
        throw new PendingException();
    }
    /**
     * @Then this is my custom step definition
     */
    public function thisIsMyCustomStepDefinition()
    {
        throw new PendingException();
    }
    public function thisIsMyAnd($arg1, $arg2)
    {
        throw new PendingException();
    }

    /**
     * @Then This is my :arg1 and :arg2
     */
    public function thisIsMyAnd2($arg1, $arg2)
    {
        throw new PendingException();
    }
    /**
     * @Given this is my step definition
     */
    public function thisIsMyStepDefinition()
    {
        throw new PendingException();
    }
    /**
     * @Given I am on the homepage
     */
    public function i_am_on_the_homepage()
    {
    }
    /**
     * @When I enter following details
     * @When Ingreso los siguientes detalles
     */
    public function iEnterFollowingDetails(TableNode $table)
    {
        $page = $this->getSession()->getPage();

        foreach ($table as $row)
        {
            var_dump($row);

            $name = $row['Your name'];
            $email =   $row['Your email address'];
            $subject = $row['Subject'];
            $message = $row['Message'];
            $page->find('css','input#edit-name')->setValue($name);
            $page->find('xpath',"//input[@id='edit-mail']")->setValue($email);
            $page->find('css','input#edit-subject-0-value')->setValue($subject);
            $page->find('css','textarea#edit-message-0-value')->setValue($message);
        }
    }
    /**
     * @Then wait for :arg1 secs
     */
    public function waitForSecs($arg1)
    {
        sleep(seconds: $arg1);
    }
    /**
     * @Then enter keyword in Search :arg1
     */
    public function enterKeywordInSearch($arg1)
    {
        $page = $this->getSession()->getPage();
        $page->find('css', 'input#edit-keys')->setValue($arg1);
    }
    /**
     * @Then I click button :arg1
     */
    public function iClickButton($arg1)
    {
        $page = $this->getSession()->getPage();

            $page->find('xpath', $arg1)->click();

    }
    /**
     * @Then I should see on page :arg1
     * @Then I should not see on page :arg1
     */
    public function iShouldSeeOnPage($arg1)
    {
        $page = $this->getSession()->getPage();
        $page->hasContent("$arg1");
    }
    /**
     * @Given /^Enter field "([^"]*)" with value "([^"]*)"$/
     */
    public function enterFieldWithValue($locator, $value)
    {
        $page = $this->getSession()->getPage();
        $page->find('css', 'input#edit-keys--2')->setValue($value);
    }

    /**
     * @When I login as admin user
     * @When inicio sesión como usuario administrador
     * @throws \Behat\Mink\Exception\ElementNotFoundException
     */
    public function iLoginAsAdminUser()
    {
        $page = $this->getSession()->getPage();
        $page->fillField('edit-name', 'krishna1991');
        $page->fillField('edit-pass', 'Swetha@2020');
        $page->pressButton('Log in');
    }

    /**
     * @When I login as Editor user
     * @throws \Behat\Mink\Exception\ElementNotFoundException
     */
    public function iLoginAsCmUser()
    {
        $page = $this->getSession()->getPage();
        $page->fillField('edit-name', 'honeycomb');
        $page->fillField('edit-pass', 'honey@123');
        $page->pressButton('Log in');
    }

    /**
     * @When I enter keyword :arg1 in textbox :arg2
     */
    public function iEnterKeywordInTextbox($arg1, $arg2)
    {
        $page = $this->getSession()->getPage();
        $page->find('css', $arg2)->setValue($arg1);
    }

    /**
     * @Then Print :arg1
     */
    public function print($arg1)
    {
        echo $arg1;
    }

    /**
     * @Then I scroll and click button :arg1
     * @throws Exception
     */
    public function iScrollAndClickButton($arg1)
    {
        $page = $this->getSession()->getPage();
        $this->scrollAndClick($arg1);
    }

    /**
     * @throws Exception
     */
    public function scrollAndClick($cssSelector)
    {
        $function = <<<JS
        (
            function()
            {
                document.querySelector("$cssSelector").scrollIntoView();
            }, function()
            {
                document.querySelector("$cssSelector").click();
            })() 
JS;
        try
        {
            $this->getSession()->executeScript($function);
        }
        catch (Exception $e)
        {
            throw new \Exception("Scroll Into View Failed. Check Your Script");
        }
    }
    /**
     * @Given :arg1 terms:
     */
    public function terms($arg1, TableNode $table)
    {
        throw new PendingException();
    }

    /**
     * @When :arg1 content:
     */
    public function content($arg1, TableNode $table)
    {
        throw new PendingException();
    }
    /**
     * @When I select lang :arg1
     */
    public function iSelectLang($arg1)
    {
        $this->articlenodepage->iSelectLangDD($arg1);
    }

}

