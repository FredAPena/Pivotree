*** Settings ***
Documentation    Basic Regression Tests Cases
Resource    ../../Resources/CommontFuntionality.robot
Resource    ../../Resources/PageObjects/UserCreationPage.robot
Resource    ../../Resources/PageObjects/SearchResultPage.robot
Resource    ../../Resources/PageObjects/Login.robot
Resource    ../../Resources/PageObjects/CompleteOrder.robot
Test Setup    CommontFuntionality.Start TestCase
Test Teardown    CommontFuntionality.Finish TestCase
*** Variables ***

*** Test Cases ***
#---------------------------------------------------------------------------------------------------
Verify correct user creation.
     [Documentation]   This test case Verify a basic user creation.
     [Tags]    Funtional
     UserCreationPage.Enter ramdon email
     UserCreationPage.Populate form
#----------------------------------------------------------------------------------------------------
Verify basic search.
     [Documentation]   This test case Verify a basic search in the funtionality.
     [Tags]    Funtional
     SearchResultPage.Verify Search Results
#----------------------------------------------------------------------------------------------------
Verify the correct login
     [Documentation]   This test case Verify the login in the funtionlity.
     [Tags]    Funtional
     Login.Login
#----------------------------------------------------------------------------------------------------
E2E purchase Verification
     [Documentation]   This test case validates the E2E from searching to purchasing a product.
     [Tags]    E2E
     SearchResultPage.Verify Search Results
     SearchResultPage.Select one element
     UserCreationPage.Enter ramdon email
     UserCreationPage.Populate form
     CompleteOrder.Complete the order
#----------------------------------------------------------------------------------------------------