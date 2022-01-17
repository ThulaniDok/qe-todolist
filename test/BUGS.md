# Bugs

1.
## Bug Description
### User can add an empty item on the todo list by adding spaces on the text box
- GIVEN a user is on the todo list application
- WHEN entering spaces in the text box using the spacebar AND clicking submit
- THEN an empty item todo list item is added

### Expected behavior
The application should not allow a user to add an empty todo list item
Spaces only should be consider invalid input

### Steps to reproduce
1. Navigate to http://localhost/todo
2. Enter spaces by clicking spacebar in the textbox
3. Click the submit button
4. Observe an empty item is added to the todo list

### Link to screenshot
- test\test_evidence\empty_item
- test\test_evidence\empty_items


2.
## Bug Description
### User can add an empty item by hitting the endpoint directly
- GIVEN a user is using postman to test the requests to the server
- WHEN adding a todo list item by hitting the todo/add endpoint with an empty request parametre
- THEN an empty todo list item is added

### Expected behavior
- The application should not allow a user to add an empty todo list item
- Spaces only should be consider invalid input

### Steps to reproduce
1. Navigate to http://localhost/todo
2. Enter spaces by clicking spacebar in the textbox
3. Click the submit button
4. Observe an empty item is added to the todo list

### Link to screenshot
- test\test_evidence\empty_item
- test\test_evidence\empty_items


3.
## Bug Description
### User can edit a todo list item with empty input value
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
- test\test_evidence\empty_item
- test\test_evidence\empty_items
