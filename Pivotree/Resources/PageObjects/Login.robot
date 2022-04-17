*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***

Login
     click element    //*[@id="header"]/div[2]/div/div/nav/div[1]/a
     sleep    3s
     input text       //*[@id="email"]    fredypforero@gmail.com
     input text       //*[@id="passwd"]   Testing1#
     click element    //*[@id="SubmitLogin"]/span
     page should contain       Welcome to your account. Here you can manage all of your personal information and orders.