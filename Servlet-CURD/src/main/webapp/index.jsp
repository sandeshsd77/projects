<!DOCTYPE html>
<html>
<head>
    <title>User Management</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 20px;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #007BFF;
        }

        form {
            background-color: #FFFFFF;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        label {
            font-weight: bold;
            margin-bottom: 8px;
        }

        input[type="number"],
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 15px;
        }

        .button-container {
            display: flex;
            gap: 10px;
            justify-content: center;
            margin-top: 20px;
        }

        .button-container button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .button-container button.submit {
            background-color: #007BFF;
            color: #FFFFFF;
        }

        .button-container button.add {
            background-color: #28A745;
            color: #FFFFFF;
        }

        .button-container button.update {
            background-color: #FFC107;
            color: #FFFFFF;
        }

        .button-container button.delete {
            background-color: #DC3545;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
<h1>User Management System </h1>
<form id="userForm" action="submit_user" method="post">
    <label for="userId">User ID:</label>
    <input type="number" id="userId" name="userId">

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>

    <label for="userName">Username:</label>
    <input type="text" id="userName" name="userName" required>

    <label for="userPassword">Password:</label>
    <input type="password" id="userPassword" name="userPassword" required>

   <div class="button-container">
        <button type="submit" class="submit">Submit</button>
        <button type="button" class="add" onclick="addUser()">Add User</button>
       <a href="update.jsp"> <button type="button" class="update" onclick="updateUser()">Update User</button> </a>
        <a href="delete.jsp"> <button type="button" class="delete" onclick="deleteUser()">Delete User</button> </a>
    </div>
</form>

<script>
    function addUser() {
        // Here you can add the logic to add the user data on the server.
        // For this example, we'll just display an alert indicating that the add button was clicked.
        alert('Add button clicked');
    }

    function updateUser() {
        // Here you can add the logic to update the user data on the server.
        // For this example, we'll just display an alert indicating that the update button was clicked.
        alert('Update button clicked');
    }

    function deleteUser() {
        // Here you can add the logic to delete the user data from the server.
        // For this example, we'll just display an alert indicating that the delete button was clicked.
        alert('Delete button clicked');
    }
</script>
</body>
</html>
