<?php
    // Input Validation
    $firstName = htmlspecialchars($_POST['firstName']);
    $lastName = htmlspecialchars($_POST['lastName']);
    $gender = htmlspecialchars($_POST['gender']);
    $email = htmlspecialchars($_POST['email']);
    $password = htmlspecialchars($_POST['password']);
    $number = htmlspecialchars($_POST['number']);

    // Password Hashing
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    // Database connection
    $conn = new mysqli('localhost','root','','gwsc');
    if($conn->connect_error){
        die("Connection Failed : ". $conn->connect_error);
    } else {
        $stmt = $conn->prepare("INSERT INTO users (firstName, lastName, gender, email, password, number) VALUES (?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("ssssss", $firstName, $lastName, $gender, $email, $hashedPassword, $number);
        $execval = $stmt->execute();
        if($execval) {
            echo "Registration successful";
        } else {
            echo "Registration failed: " . $stmt->error;
        }
        $stmt->close();
        $conn->close();
    }

    // Error Reporting
    error_reporting(0);
?>
