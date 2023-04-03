*** Settings ***
Documentation  Clicks in Robot Framework
Library    SeleniumLibrary


*** Keywords ***
user clicks button
    [Arguments]    ${xpath}    
    Click Element    ${xpath}    
    
user clicks dropdown
    log to console  executed dropdown

login   
     Set Selenium Speed    1s
     Open Browser    https://www.upwork.com/         chrome   
Logout
    Log To Console     im in logout
    Sleep     10
    Close Browser
user clicks radiobutton
    maximize browser window
    set selenium speed    2seconds
#Radio Buttons
    page should contain radio button    xpath:(//input[@name='radiooptions'])
    page should not contain radio button    xpath:(//input[@name='radiooptions123'])
    radio button should not be selected    radiooptions
    select radio button    radiooptions   FeMale
   # select radio button    radiooptions   Male
    Sleep    2
    Click Element    //*[@value="Male"]
   # ${variable}=    radio button should be set to    radiooptions   Male