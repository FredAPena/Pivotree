*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***

Complete the order
     click element    //*[@id="center_column"]/p[2]/a[1]/span
     input text       //*[@id="ordermsg"]/textarea      Test test test test
     click element    //*[@id="center_column"]/form/p/button/span
     click element    //*[@id="cgv"]
     click element     //*[@id="form"]/p/button/span
     click element     //*[@id="HOOK_PAYMENT"]/div[1]/div/p/a
     click element    //*[@id="cart_navigation"]/button/span
     page should contain    Your order on My Store is complete.
     sleep    3s