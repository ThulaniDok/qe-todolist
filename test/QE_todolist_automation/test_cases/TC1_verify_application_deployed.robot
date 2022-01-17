
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${AUTOMATION URL}      http://localhost/todo

*** Test Cases ***
LoginTest
    Open browser    ${AUTOMATION URL}   chrome
    Confirm Page Title
    Maximize Browser Window
    Capture page screenshot     C:\Users\ThulaniGawie\Downloads\qe-todolist\qe-todolist\application_home.png
    [Teardown]    Close Browser

*** Keywords ***
Confirm Page Title
    Title Should Be    QE tdolist