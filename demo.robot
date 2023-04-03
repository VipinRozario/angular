*** Settings ***
Documentation  Clicks in Robot Framework
Resource     ../Demo/Resources/common_userdefinedkeywords.robot
Resource    ../Demo/Resources/objects.robot
Suite Setup    Login
Suite Teardown   Logout 

Library    Telnet

*** Test Cases ***
sample
       # Input Text      ${xpath}         Madhuri Ladda
       # user clicks button    ${xpath}  
        user clicks radiobutton  
       # user clicks dropdown
        
        
        


