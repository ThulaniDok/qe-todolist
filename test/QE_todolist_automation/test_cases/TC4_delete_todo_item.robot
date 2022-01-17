
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${AUTOMATION URL}      http://localhost/todo

*** Test Cases ***
Reload browser
    Open browser    ${AUTOMATION URL}   chrome
    Confirm Page Title
    Maximize Browser Window
    click link   link:✘
    click link   link:✘
    Capture page screenshot     deleted_items.png
    [Teardown]    Close Browser


*** Keywords ***
Confirm Page Title
    Title Should Be    QE tdolist