<!DOCTYPE html>
<html>
<head>
    <title>Delete User</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        .container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        h1 {
            color: #007BFF;
            font-size: 28px;
        }

        form {
            padding: 20px;
            border-radius: 10px;
            border: 1px solid #ddd;
            background-color: #f0f0f0;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 10px;
        }

        input[type="number"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            margin-bottom: 15px;
        }

        .button-container {
            display: flex;
            justify-content: center;
        }

        button {
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            background-color: #DC3545;
            color: #FFFFFF;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #C82333;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <h1>Delete User</h1>
    </div>
    <form id="deleteForm" action="delete_user" method="post">
        <label for="userId">User ID:</label>
        <input type="number" id="userId" name="userId" required>

        <div class="button-container">
            <button type="submit">Delete User</button>
        </div>
    </form>
</div>
</body>
</html>
