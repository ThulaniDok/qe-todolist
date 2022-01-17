## Bug 1 - Page title spelt incorrectly as QE tdolist
- GIVEN a user navigates to the todo list application
- WHEN observing the page title
- THEN the page title is incorrectly spelt

### Expected behavior
- The page title should be spelt QE todolist

### Steps to reproduce
1. Navigate to http://localhost/todo
2. Observe the page title is spelt incorrectly

### Link to screenshot
- test\test_evidence\page_title.png

## Bug 2 - User can add an empty item on the todo list by adding spaces on the text box
- GIVEN a user is on the todo list application
- WHEN entering spaces in the textbox using the spacebar AND clicking submit
- THEN an empty item todo list item is added

### Expected behavior
The application should not allow a user to add an empty todo list item
Spaces only input should be consider invalid input

### Steps to reproduce
1. Navigate to http://localhost/todo
2. Enter spaces by clicking spacebar in the textbox
3. Click the submit button
4. Observe an empty item is added to the todo list

### Link to screenshot
- test\test_evidence\empty_item.png
- test\test_evidence\empty_items.mp4

## Bug 3 - User can add an empty item by hitting the endpoint directly
- GIVEN a user is using postman to test the requests to the server
- WHEN adding a todo list item by hitting the todo/add endpoint without a request parametre
- THEN an empty todo list item is added

### Expected behavior
- The application should not allow a user to add an empty todo list item

### Steps to reproduce
1. Execute a POST request to localhost/todo/add/ on Postman without request parametres 
2. Observe response code is 200 OK 
3. Navigate to the application frontend
4. Observe an empty todo list item is added 


## Bug 4 - User can edit a todo list item with empty input value
- GIVEN a todo list item exist
- WHEN clicking the update button without a value in the textbox
- THEN the item is updated to an empty item

### Expected behavior
- The application should not allow a user to update an item without a valid input in the textbox

### Steps to reproduce
1. Navigate to http://localhost/todo
2. Add a todo list item
3. Click on the update button on the todo list item without adding an update value
4. Observe an empty item is added to the todo list

### Link to screenshot
- test\test_evidence\empty_item.png
- test\test_evidence\empty_items.pm4
