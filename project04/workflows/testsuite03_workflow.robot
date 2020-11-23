*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/config/global_config.robot
Resource    ../resources/utils/browser_utils.robot
Resource    ../resources/pages/home_page.robot 
Resource    ../resources/pages/trains_page.robot
Resource    ../resources/components/trains.robot

Test Template    serach trains 

*** Test Cases ***
search trains test 01    Secunderabad Junction (SC)    Tirupati (TPTY)    2    20    2
search trains test 02    Tirupati (TPTY)    Secunderabad Junction (SC)    3    21    2  
search trains test 03    Vishakapatnam (VSKP)    Tirupati (TPTY)    2    22    3  
search trains test 04    Secunderabad Junction (SC)    Vishakapatnam (VSKP)    2    19    2   
search trains test 05    Vijayawada Junction (BZA)    Tirupati (TPTY)    3    20    2
    
    
