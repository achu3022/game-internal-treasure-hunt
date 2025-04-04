<?php
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['emp_id'])) {
    $emp_id = trim($_POST['emp_id']);

    // Check if employee exists
    $stmt = $conn->prepare("SELECT name, phone, department FROM staffs WHERE emp_id = ?");
    $stmt->bind_param("s", $emp_id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($row = $result->fetch_assoc()) {
        echo json_encode([
            'status' => 'found',
            'name' => $row['name'],
            'phone' => $row['phone'],
            'department' => $row['department'] ?? 'Not Available'
        ]);
    } else {
        echo json_encode(['status' => 'not_found']);
    }
   
}

// Handle registration
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['register'])) {
    $emp_id = trim($_POST['emp_id']);
    $name = trim($_POST['name']);
    $phone = trim($_POST['phone']);
    $department = trim($_POST['department']);

    // Validate required fields
    if (empty($emp_id) || empty($name) || empty($phone)) {
        echo json_encode(['status' => 'error', 'message' => 'All fields are required!']);
        exit;
    }

    // Check if emp_id already exists
    $stmt = $conn->prepare("SELECT emp_id FROM staffs WHERE emp_id = ?");
    $stmt->bind_param("s", $emp_id);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        echo json_encode(['status' => 'error', 'message' => 'Employee ID already exists!']);
        exit;
    }

    // Insert into the database
    $stmt = $conn->prepare("INSERT INTO staffs (emp_id, name, phone, department) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $emp_id, $name, $phone, $department);

    if ($stmt->execute()) {
        echo json_encode(['status' => 'registered']);
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Database insertion failed! ' . $stmt->error]);
    }
    exit;
}
?>
