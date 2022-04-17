*** Settings ***
Library    SeleniumLibrary
Library    String
*** Variables ***
${a}=    testcolombia
${b}=    @gmail.com
*** Keywords ***

Enter ramdon email
     click element    //*[@id="header"]/div[2]/div/div/nav/div[1]/a
     sleep    3s
     ${ret}=    Generate Random String
     input text       //*[@id="email_create"]      ${a}${ret}${b}
     sleep    3s
     click element    //*[@id="SubmitCreate"]/span

Populate form
     sleep    3s
     click element    //*[@id="account-creation_form"]/div[1]/div[1]/div[1]/label
     input text       //*[@id="customer_firstname"]     Fredy
     input text       //*[@id="customer_lastname"]      Test
     click element    //*[@id="email"]
     input text       //*[@id="passwd"]     Testing1#
     click element    //*[@id="days"]
     click element    //*[@id="days"]/option[18]
     click element    //*[@id="months"]
     click element    //*[@id="months"]/option[5]
     click element    //*[@id="years"]
     click element    //*[@id="years"]/option[7]
     click element    //*[@id="firstname"]
     click element    //*[@id="lastname"]
     input text       //*[@id="company"]    Privotree
     input text       //*[@id="address1"]    Street 45 23-45
     input text       //*[@id="address2"]    Apartment 17
     input text       //*[@id="city"]      Flowers
     click element    //*[@id="id_state"]
     click element    //*[@id="id_state"]/option[11]
     input text       //*[@id="postcode"]     11111
     click element    //*[@id="id_country"]
     input text       //*[@id="other"]     Test test test test test test
     input text       //*[@id="phone"]    62167543
     input text       //*[@id="phone_mobile"]    678543234
     input text       //*[@id="alias"]    street 17 17-17
     click element    //*[@id="submitAccount"]
     sleep    3s