*** Settings ***
Library  SeleniumLibrary
Resource  D:/robotframework/variables/variables.robot
*** Keywords ***
browser should be opened
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Sleep    10
    Page Should Contain    Login
    Log To Console  text is found
username entered
    Wait Until Page Contains Element  ${username}  5
    Log To Console  username is found
    Click Element  ${username}
    Log To Console  element got clicked
    Input Text  ${username}  ${txt1}
    Log To Console  username is entered
password entered
    Wait Until Page Contains Element  ${password}  5
    Log To Console  password is found
    Click Element  ${password}
    Log To Console  password got clicked
    Input Text  ${password}  ${txt2}
    Log To Console  password is entered
clicked on login
    Wait Until Page Contains Element  ${login}  5
    Log To Console  login found
    Click Element  ${login}
    Log To Console    login got clicked
timelink method
    clicking on side menu  ${timelink}
recruitment method
    clicking on side menu  ${reclink}
    Sleep  5
    Click Element  ${jobtitle}
    jobtitle dropdown
    Sleep  5
#navigating through dropdowns
jobtitle dropdown
    FOR  ${i}  IN RANGE  1  20
        Press Keys  none  ARROW_DOWN
        ${element2} =  Run Keyword And Return Status  Element should be Visible  ${nettadm}
        IF    ${element2}
            Wait Until Element Is Visible  ${nettadm}
            Press Keys  ${nettadm}
            Exit For Loop
        ELSE
            Log  continue
        END
    END
#clicking on side menu
clicking on side menu
    [Arguments]    ${element}
    Wait Until Page Contains Element    ${element}    10
    Click Element    ${element}







