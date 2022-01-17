# Todo List Requirement 8 Test Plan

## Introduction
This document describes the methods and process that will be used 
to carry out the testing for the Todo List Web Application front end as a mobile application.

Using the 5Ws and 1H method, we describe how the test plan will be used as guide.

## WHAT? - Scope
Scope of Todo List application
8. The application (frontend only) should be ported to Cordova and run as a mobile application.

## WHY? - Objectives Of The Test Plan
The objective of the testing activities is to check functions and features of the Todo List application against the requirements.

## HOW? - Test Stratergy
### Types of Testing
 - System testing 
 - Mobile device / browser compatibility
 - Usability testing
 - Fault tolerance

### Tools required
- Real mobile devices with different operating systems
- Mobile device simulators for addition device coverage

## Getting started
- Mobile device full charged
- Mobile device connected to the internet

## Execute Functional Manual Test Cases

### Verify that application loads and runs properly on a mobile device
  - GIVEN a user has a mobile device
  - WHEN navigating to the url http://localhost:8081
  - THEN the application should load without and behave as expected

### Verify that multiple devices can view the share todo list
  - GIVEN user A is viewing the application on a mobile device 
  - WHEN user B loads the application a different mobile device
  - THEN both user should see the same todo list

### Verify application behaves as expected in 3G connection
  - GIVEN a user is on a device connected to a 3G network
  - WHEN navigating the application 
  - THEN the application should behave as expected without issues

### Verify application behaves as expected on Wifi connection
  - GIVEN a user is on a device connected to a wifi network
  - WHEN navigating the application 
  - THEN the application should behave as expected without issues

### Verify that the application still runs in battery saving mode
  - GIVEN a user is viewing the application on a mobile device in battery saving mode
  - WHEN navigating the application
  - THEN the application should behave as expected without issues

### Verify how application behaves when javascript is turned off on the browser
  - GIVEN a user is on a browser with javascript turned off
  - WHEN navigatin the application 
  - THEN approprite message should be displayed

## WHEN? - Entry Criteria
- Applciation is deployed to test environment
- Acceptance criteria passed
- Unit tests passed

## WHO? -  Resources
- QE Analyst
- Developer
- Product Owner

## WHERE? - Environment
- Environemtn - http://localhost/8080
- Device - mobile device
- Browser - latest browsers
