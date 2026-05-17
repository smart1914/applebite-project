<?php
// Display errors if anything goes wrong
ini_set('display_errors', 1);
error_reporting(E_ALL);

echo '<!DOCTYPE html>
<html>
<head>
    <title>AppleBite Co. - DevOps Deployment</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f4f4; text-align: center; padding: 50px; }
        .container { background: white; padding: 30px; border-radius: 10px; box-shadow: 0px 0px 10px rgba(0,0,0,0.1); display: inline-block; }
        h1 { color: #333; }
        .status { color: green; font-weight: bold; margin-bottom: 20px; }
        input[type="text"], input[type="email"] { padding: 10px; width: 250px; margin: 10px 0; border: 1px solid #ccc; border-radius: 5px; }
        input[type="submit"] { background: #007BFF; color: white; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer; }
    </style>
</head>
<body>
    <div class="container">
        <h1> AppleBite Co. Application Portal</h1>
        <p class="status">✓ Continuous Deployment Pipeline Active</p>
        
        <form method="POST">
            <input type="text" name="name" placeholder="Enter Full Name" required><br>
            <input type="email" name="email" placeholder="Enter Email Address" required><br>
            <input type="submit" value="Register App Component">
        </form>';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name = htmlspecialchars($_POST['name']);
    echo "<p style='color: blue; margin-top: 20px;'>Thank you, $name! Registration simulation successful.</p>";
}

echo '</div>
</body>
</html>';
?>
