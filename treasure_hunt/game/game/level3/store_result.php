<?php
session_start();
include 'config.php';

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *'); // Allow AJAX requests from any domain
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Content-Type');

// Prevent PHP from outputting errors in response
error_reporting(0);
ini_set('display_errors', 0);

// Log received POST data (for debugging)
error_log("Received POST data: " . json_encode($_POST));

if (!isset($_POST["user_id"]) || !isset($_POST["status"])) {
    echo json_encode(["error" => "Missing required fields", "received" => $_POST]);
    exit();
}

$user_id = $_POST["user_id"];
$status = $_POST["status"];

$stmt_update = $conn->prepare("UPDATE scores SET status = ? WHERE user_id = ? AND status = 'Failed' ORDER BY id DESC LIMIT 1");

if (!$stmt_update) {
    echo json_encode(["error" => "SQL Prepare Failed", "sql_error" => $conn->error]);
    exit();
}

$stmt_update->bind_param("si", $status, $user_id);

if ($stmt_update->execute()) {
    if ($stmt_update->affected_rows > 0) {
        echo json_encode(["success" => "Game result updated"]);
    } else {
        echo json_encode(["error" => "No matching 'Failed' record found or update failed"]);
    }
} else {
    echo json_encode(["error" => "SQL Execute Failed", "sql_error" => $stmt_update->error]);
}

$stmt_update->close();
$conn->close();
?>

<doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Game Result</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <?php
    // Fetch the next level password for the user
    $stmt_password = $conn->prepare("SELECT password FROM levels WHERE user_id = ? AND level = 2");

    if (!$stmt_password) {
        echo "<p>Error fetching password: " . htmlspecialchars($conn->error) . "</p>";
        exit();
    }

    $stmt_password->bind_param("i", $user_id);

    if ($stmt_password->execute()) {
        $result = $stmt_password->get_result();
        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            $password = htmlspecialchars($row['password']);
            if($status == 'win') {
                echo "<p>Congratulations! You have passed the level.</p>";
                echo "<p>Next Level Password: <strong>$password</strong></p>";
            } else if($status == 'fail') {
                echo "<p>Sorry, you have failed the level. Please try again.</p>";
                echo "<p>No password found for the next level.</p>";
            } 
        }
    } else {
        echo "<p>Error executing query: " . htmlspecialchars($stmt_password->error) . "</p>";
    }

    $stmt_password->close();
    ?>
    