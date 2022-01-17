
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${AUTOMATION URL}      http://localhost/todo

*** Test Cases ***
Reload browser
    Open browser    ${AUTOMATION URL}   chrome
    Confirm Page Title
    Maximize Browser Window
    input text  id:newtodo  Do the laundery.
    Click element   id:new-submit
    input text  id:newtodo  Pick up child at school.
    Click element   id:new-submit
    Capture page screenshot     add_new_todoitem.png
    [Teardown]    Close Browser

*** Keywords ***
Confirm Page Title
    Title Should Be    QE tdolist

Confirm Todo Item 1 is Edit
    Element Text Should Be    id:span-todo-0    Do the laundery

Confirm Todo Item 2 is Edit
    Element Text Should Be    id:span-todo-1    Pick up child at school.
