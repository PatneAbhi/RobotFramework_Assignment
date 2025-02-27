*** Settings ***
Documentation    GalleryPage test suit
Library    SeleniumLibrary
Resource         generic.robot
Resource    Variables.robot


*** Keywords ***
Verify SimulationGallery page opened
    Click Element    (//div[@class='ui dropdown item'])[2]
    Wait Until Element Is Visible    (//a[text()='Simulation gallery'])[2]
    Click Element    (//a[text()='Simulation gallery'])[2]
    Sleep    10s
    Element Should Contain    //span[normalize-space()='SIMULATION GALLERY']    SIMULATION GALLERY

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

Access CCTECH office project
    Wait Until Element Is Visible    (//i[@class='fa fa-angle-right'])[1]
    Click Element    (//i[@class='fa fa-angle-right'])[1]
    Sleep    10s
    Scroll Element Into View    //span[text()='CCTech Office Pune']
    Sleep    5s
    Click Element    (//span[text()='Open Results'])[11]
    Sleep    15s

Verify CCTECH office project opened
    Wait Until Element Is Visible    //div[text()='Square Plaque Design']
    Element Should Contain    //div[text()='Square Plaque Design']    Square Plaque Design

Open Meeting room
    Sleep    20s
    Wait Until Element Is Visible    //div[text()='Square Plaque Design']
    Click Element    //div[text()='Square Plaque Design']
    Sleep    1s
    Click Element    //div[text()='Cooling']
    Sleep    1s
    Click Element    //div[text()='Meeting Room']
    Sleep    10s

Check Thermal comfort
    Wait Until Element Is Visible    //div[@class='adsk-button-icon adsk-icon-structure']
    Click Element    //div[text()='Thermal Comfort']
    Sleep    5s
    Wait Until Element Is Visible    //p[text()='Occupant Thermal Comfort']
