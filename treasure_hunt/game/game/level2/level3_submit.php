<?php
session_start();
include '../../config.php'; // Database connection

$user_id = $_SESSION['user_id'];
$answers = $_POST['answers'];
$questions = $_SESSION['level3_questions'];

$score = 0;

// Check Answers
foreach ($questions as $q) {
    $q_id = $q['id'];
    if (isset($answers[$q_id]) && $answers[$q_id] === $q['correct_option']) {
        $score++;
    }
}

// Check if user has already played
$query = "SELECT * FROM level3_scores WHERE user_id = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $user_id);
$stmt->execute();
$result = $stmt->get_result();
$userData = $result->fetch_assoc();
$stmt->close();

if ($userData) {
    header("Location: ../../game_start.php");
    exit();
}

// Determine Status
$total_questions = count($questions);
$status = ($score >= 7) ? 'win' : 'fail';

// Store Score
$insertQuery = "INSERT INTO level3_scores (user_id, score, status) VALUES (?, ?, ?)";
$stmt = $conn->prepare($insertQuery);
$stmt->bind_param("iis", $user_id, $score, $status);

if ($stmt->execute()) {
    if ($status === 'win') {
        header("Location: level3_result.php");
    } else {
        echo "Sorry, you didn't pass. Try again!";
        header("refresh:5;url=../../game_start.php");
    }
} else {
    echo "Error storing score. Please try again.";
}
$stmt->close();
$conn->close();
exit();
?>
