*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${xpath_txt_serachtrains}    //h1[contains(text(),'Search trains')]        

*** Keywords ***
verify trains page
    Element Should Be Visible    ${xpath_txt_serachtrains}    