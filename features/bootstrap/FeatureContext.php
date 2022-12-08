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

}

