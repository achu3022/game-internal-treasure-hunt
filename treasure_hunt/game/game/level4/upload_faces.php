<?php
session_start();
include '../../config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $clue = $_POST['clue'];
    $option_1 = $_POST['option_1'];
    $option_2 = $_POST['option_2'];
    $option_3 = $_POST['option_3'];
    $option_4 = $_POST['option_4'];
    $correct_answer = $_POST['correct_answer'];

    $target_dir = "uploads/faces/"; // Directory to store images
    $image_name = basename($_FILES["image"]["name"]);
    $imageFileType = strtolower(pathinfo($image_name, PATHINFO_EXTENSION));

    // Generate a unique filename to avoid overwriting
    $unique_name = uniqid("face_") . "." . $imageFileType;
    $target_file = $target_dir . $unique_name;

    // Allowed file types
    $allowed_types = ["jpg", "jpeg", "png", "gif"];
    if (!in_array($imageFileType, $allowed_types)) {
        echo "<script>alert('Only JPG, JPEG, PNG, & GIF files are allowed.');</script>";
        exit();
    }

    // Move uploaded file
    if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
        $image_path = $target_file;

        // Insert into database
        $stmt = $conn->prepare("INSERT INTO level4_identification (image_path, clue, option_1, option_2, option_3, option_4, correct_answer) 
                                VALUES (?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("sssssss", $image_path, $clue, $option_1, $option_2, $option_3, $option_4, $correct_answer);
        
        if ($stmt->execute()) {
            echo "<script>alert('Face added successfully!');</script>";
        } else {
            echo "<script>alert('Database error: " . $stmt->error . "');</script>";
        }
        $stmt->close();
    } else {
        echo "<script>alert('Failed to upload file.');</script>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Faces for Level 4</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 500px;
            background: white;
            padding: 20px;
            margin: 50px auto;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h2 {
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        input[type="text"], input[type="file"] {
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 12px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        .message {
            margin-top: 10px;
            color: red;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Upload Face Image</h2>
    <form action="" method="post" enctype="multipart/form-data">
        <label>Upload Image:</label>
        <input type="file" name="image" required>

        <label>Clue:</label>
        <input type="text" name="clue" required>

        <label>Option 1:</label>
        <input type="text" name="option_1" required>

        <label>Option 2:</label>
        <input type="text" name="option_2" required>

        <label>Option 3:</label>
        <input type="text" name="option_3" required>

        <label>Option 4:</label>
        <input type="text" name="option_4" required>

        <label>Correct Answer:</label>
        <input type="text" name="correct_answer" required>

        <input type="submit" value="Upload">
    </form>
</div>

</body>
</html>
