*** Settings ***
Documentation    Generic test suit
Library    SeleniumLibrary

*** Keywords ***
Open view gallery
    [Arguments]         ${URL}    ${EmailId}    ${Password}
    Create Webdriver    Chrome
    Maximize Browser Window
    Go To               ${URL}
    Input Text      xpath:(//input[@type='email'])[1]   ${EmailId}
    Sleep           1s
    Click Button    id:btn_get_user
    Sleep    3s
    Input Password    id:l_password    ${Password}
    Sleep             1s
    Click Button      id:btn_login_reg
    Sleep    10s
    Click Element    (//div[@class='ui dropdown item'])[2]
    Wait Until Element Is Visible    (//a[text()='Simulation gallery'])[2]
    Click Element    (//a[text()='Simulation gallery'])[2]
    Sleep    10s