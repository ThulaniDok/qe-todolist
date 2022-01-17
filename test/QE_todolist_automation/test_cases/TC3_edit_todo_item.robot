
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${AUTOMATION URL}      http://localhost/todo

*** Test Cases ***
Reload browser
    Open browser    ${AUTOMATION URL}   chrome
    Confirm Page Title
    Maximize Browser Window
    input text  id:edittodo-0  This is an edited item.
    Click element   id:edit-submit-0
    Confirm Todo Item 1 is Edit
    input text  id:edittodo-1  Another edited item.
    Click element   id:edit-submit-1
    Confirm Todo Item 2 is Edit
    Capture page screenshot     edited_todoitems.png
    [Teardown]    Close Browser

*** Keywords ***
Confirm Page Title
    Title Should Be    QE tdolist

Confirm Todo Item 1 is Edit
    Element Text Should Be    id:span-todo-0    This is an edited item.

Confirm Todo Item 2 is Edit
    Element Text Should Be    id:span-todo-1    Another edited item.