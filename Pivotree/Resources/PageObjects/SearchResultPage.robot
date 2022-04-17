*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***

Verify Search Results
     input text       //*[@id="search_query_top"]    dress
     press keys       //*[@id="searchbox"]/button    [Return]
     page should contain       results have been found.

Select one element
     mouse over       //*[@id="center_column"]/ul/li[1]/div/div[1]/div/a[1]/img
     sleep    3s
     mouse down       //*[@id="center_column"]/ul/li[1]/div/div[2]/div[2]/a[1]
     click element    //*[@id="center_column"]/ul/li[1]/div/div[2]/div[2]/a[1]
     sleep    3s
     mouse over       //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a/span
     click element    //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a/span
     sleep    3s