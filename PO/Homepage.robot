*** Settings ***
Documentation    Homepage test suite
Library          SeleniumLibrary

*** Variables ***


*** Keywords ***
Open browser for simulation website
    [Arguments]         ${URL}
    Create Webdriver    Chrome
    Maximize Browser Window
    Go To               ${URL}

Enter credentials and continue
    [Arguments]     ${EmailId}
    Input Text      xpath:(//input[@type='email'])[1]   ${EmailId}
    Sleep           1s
    Click Button    id:btn_get_user
    Sleep    3s

Enter Password and SignIn
    [Arguments]       ${Password}
    Input Password    id:l_password    ${Password}
    Sleep             1s
    Click Button      id:btn_login_reg
    Sleep    10s

Wait for error message
    Wait Until Element Is Visible    (//span[@id='message'])[1]

Verify error message
    Get Text                  (//span[@id='message'])[1]
    Element Should Contain    id:message    Invalid email

Verify successfully login
    #[Arguments]    ${EmailId}
    #Click Element    (//i[@class='fa fa-caret-down'])[2]
    Wait Until Element Is Visible    (//div[@class='ui small header no-margin'])[3]
    Element Should Contain    (//div[@class='ui small header no-margin'])[3]    Welcome to simulationHub