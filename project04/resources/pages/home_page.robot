*** Settings ***
Library    SeleniumLibrary   

*** Variables ***
${xpath_txt_serachflights}    //h1[contains(text(),'Search flights')]
${xpath_lnk_trains}    //body/section[@id='Home']/div[1]/aside[1]/nav[1]/ul[1]/li[3]/a[1]

*** Keywords ***
verify homepage
    Element Should Be Visible    ${xpath_txt_serachflights}
    
navigate to trains page
    Click Element    ${xpath_lnk_trains}    