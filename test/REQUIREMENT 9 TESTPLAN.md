# Todo List Requirement 9 Test Plan

## Introduction
This document describes the methods and process that will be used 
to carry out the testing for the Todo List running on a 3 node cluster with multiple replicas of each pod.

Using the 5Ws and 1H method, we describe how the test plan will be used as guide.

## Scope
Scope of Todo List application
- The application backend should run in Kubernetes on a 3 node cluster with multiple replicas of each pod.
 - Should be able to do rolling updates on the backend service without downtime
 - Application should be self healing after network issues, node outages, node restarts and other issues

## Test Stratergy
### Types of Testing
 - Load and Performance testing
 - Reliability

### Tools required
- Neoload

## Getting started
- Make sure Neoload is installed

## Execute Functional Manual Test Cases

### Verify that application load is distributed across the 3 nodes
  - GIVEN a list of todo items is added
  - WHEN viewing the data stored across the nodes
  - THEN the list of todo items must be distributed across the 3 nodes

### Verify that application performs as exteced while distributing the load across the nodes
  - GIVEN a long list of todo items is added rapidly on the application
  - WHEN distributing the list across the nodes
  - THEN appication should still perform as expected

### Verify that a node can be restarted without bringing the application down
  - GIVEN the application runs on a 3 node cluster 
  - WHEN restarting one of the nodes
  - THEN the application should work as expected without downtime

### Verify that when a node is restarted the load is distrubuted on the node
  - GIVEN a a node has been restarted
  - WHEN adding a list of todo items on the application
  - THEN the list should distributed across all nodes including the recently restarted node

### Verify that when then application is disconnected and reconnected to the internet it can be accessed without manual intervention
  - GIVEN the application is disconnected from the internet
  - WHEN reconnected the application to the internet
  - THEN the application should run and load without errors
  - AND all 3 nodes should run

## WHEN? - Entry Criteria
- Applciation is deployed to test environment
- 3 node cluster is running in Kubernetes
- Acceptance criteria passed
- Unit tests passed

## WHO? -  Resources
- QE Analyst
- Developer

## WHERE? - Environment
- Environemtn - http://localhost/8080
- Device - desktop/laptop
- Browser - latest browser
