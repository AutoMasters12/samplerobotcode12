*** Settings ***
Library    SeleniumLibrary       
Resource    ../config/global_config.robot
Resource    ../utils/browser_utils.robot
Resource    ../pages/home_page.robot 
Resource    ../pages/trains_page.robot 

*** Variables ***
${xpath_edit_fromloc}    //input[@id='from_station']
${xpath_edit_toloc}    //input[@id='to_station']
${xpath_dd_class}    //select[@id='trainClass']
${xpath_dateicon}    //body/div[@id='Wrapper']/div[1]/section[1]/div[1]/div[1]/div[1]/form[1]/section[2]/div[3]/dl[1]/dd[1]/span[1]/a[1]/img[1]
${xpath_dd_adults}    //select[@id='train_adults']
${xpath_btn_submit}    //button[@id='trainFormButton']

*** Keywords ***
serach trains
    [Arguments]    ${fromloc}    ${toloc}    ${class}    ${date}    ${adults}
    launch browser and invoke application    ${url}    ${browser_chrome}
    verify homepage   
    navigate to trains page
    verify trains page
    perform search trains    ${fromloc}    ${toloc}    ${class}    ${date}    ${adults}
    kill browser
    
perform search trains
    [Arguments]    ${fromloc}    ${toloc}    ${class}    ${date}    ${adults}
    Input Text    ${xpath_edit_fromloc}    ${fromloc}      
    Input Text    ${xpath_edit_toloc}    ${toloc}
    Select From List By Index    ${xpath_dd_class}    ${class}
    Click Element    ${xpath_dateicon}    
    Click Element    (//a[text()='${date}'])[1]    
    Select From List By Index    ${xpath_dd_adults}    ${adults}
    Click Element    ${xpath_btn_submit}
    
