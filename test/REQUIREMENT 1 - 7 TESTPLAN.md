# Todo List Requirements 1-7 Test Plan

## Introduction
This document describes the methods and process that will be used 
to carry out the testing for the Todo List Web Application.

It is meant to be used as a guide during testing. It describes
the testing process. The test plan is intended for the agile team, QA team and all stakeholders interested in the Todo list application.

Using the 5Ws and 1H method, we describe how the test plan will be used as guide.


## WHAT? - Scope
Scope of Todo List application
1. Application must be able to deploy in docker
2. Multiple users should be able to view the shared public todo list (no live updates, only on refresh)
3. Todo list items should persist after browser refresh
4. Todo items should not be able to be empty
5. Should be able to add todo items
6. Should be able to delete todo items
7. Should be able to edit todo items

## WHY? - Objectives Of The Test Plan
The objective of the testing activities is to check functions and features of the Todo List application against the requirements.

## HOW? - Test Stratergy
### Types of Testing
- Functional 
 - System testing -Manual and Automation
 - API testing - Manual with Postman

## Getting started
- Install Postman (https://www.postman.com/downloads/)

## Run API Tests with Postman
- Import the collection test\qe_todo_list.postman_collection.json into postman
- Run the requests individually and observe the Test tab

## Execute Functional Manual Test Cases
### Verify that appliation can be deployed in docker - Man 
  - GIVEN application is deployed in docker
  - WHEN navigating to the url http://localhost:8081
  - THEN the application should load without errors

### Verify that multiple user can view the shared public todo list - Man
  - GIVEN user A is viewing the application on 
  - WHEN user B loads the application a different browser session
  - THEN both user should see the same todo list

### Verify that the todo list is persisted after browser refresh - Man
  - GIVEN a user is viewing the application AND a todo list is loaded
  - WHEN refreshing the browser
  - THEN te list same list should be displayed after the browser has finished loading

### Verify that a todo list item cannot be empty - Man
  - GIVEN a user is on the application 
  - WHEN adding or updating a todo list item with an empety value in the input field 
  - THEN the item should not be added

### Verify that a user can add a todo list item - Man/Auto
  - GIVEN a user is on the application
  - WHEN adding a todo list item with a valid input
  - THEN the list should be added

### Verify that a user can edit a todo list item - Man/Auto
  - GIVEN a user is on the application 
  - AND a todo list item exist
  - WHEN editing a todo list item with a valid input
  - THEN the list should be updated with the new value

### Verify that a user can delete a todo list item - Man/Auto
  - GIVEN a user is on the application 
  - AND a todo list item exist
  - WHEN deleting a todo list item
  - THEN the list should be removed from the list


## WHEN? - Entry Criteria
- Applciation is deployed to test environment
- Acceptance criteria passed
- Unit tests passed

## WHO? -  Resources
- QE Analyst
- Developer
- Product Owner

## WHERE? - Environment
- Environemtn: http://localhost/8080
- Device: desktop or laptop
- Browser: latest browsers
