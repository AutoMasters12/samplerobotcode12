*** Settings ***
Library    SeleniumLibrary    


*** Keywords ***
launch browser and invoke application
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
kill browser
    Close All Browsers