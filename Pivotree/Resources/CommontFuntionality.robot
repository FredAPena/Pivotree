*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Keywords ***
Start TestCase
     Open Browser     http://automationpractice.com/index.php        chrome
     maximize browser window

Finish TestCase
      close browser
