*** Settings ***
Documentation    SimulationHub website automation
Library          SeleniumLibrary
Resource         ../PO/Homepage.robot
Resource         ../PO/Variables.robot
Resource         ../PO/GalleryPage.robot
#Resource         ../PO/generic.robot
Test Teardown    Close Browser


*** Test Cases ***
Validate Unsuccessful login
    Homepage.Open browser for simulation website    ${LoginURL}
    Homepage.Enter credentials and continue         ${InvalidEmailId}
    Homepage.Wait for error message
    Homepage.Verify error message

Validate Successful login
    Homepage.Open browser for simulation website    ${LoginURL}
    Homepage.Enter credentials and continue         ${ValidEmailId}
    Homepage.Enter Password and SignIn              ${Password}
    Homepage.Verify successfully login

    
Open Gallery page
    Homepage.Open browser for simulation website    ${LoginURL}
    Homepage.Enter credentials and continue         ${ValidEmailId}
    Homepage.Enter Password and SignIn              ${Password}
    GalleryPage.Verify SimulationGallery page opened

Open CCTECH office pune gallery project
    GalleryPage.Open view gallery    ${LoginURL}     ${ValidEmailId}    ${Password}
    GalleryPage.Access CCTECH office project
    GalleryPage.Verify CCTECH office project opened
    
Check Thermal comfort of Meeting room
    GalleryPage.Open view gallery    ${LoginURL}     ${ValidEmailId}    ${Password}
    GalleryPage.Access CCTECH office project
    GalleryPage.Open Meeting room
    GalleryPage.Check Thermal comfort



