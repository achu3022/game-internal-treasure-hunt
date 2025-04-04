<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
header("Content-Type: application/json");

include 'config.php';

if (!$conn) {
    die(json_encode(["status" => "error", "message" => "Database connection failed: " . mysqli_connect_error()]));
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $emp_id = $_POST['emp_id'] ?? null;
    $ip_address = $_POST['ip_address'] ?? 'Unknown';
    $location = $_POST['location'] ?? 'Unknown';

    if (!$emp_id) {
        echo json_encode(["status" => "error", "message" => "Employee ID missing."]);
        exit();
    }

    // Fetch the id from staffs table using emp_id
    $stmt = $conn->prepare("SELECT id FROM staffs WHERE emp_id = ?");
    $stmt->bind_param("s", $emp_id);
    $stmt->execute();
    $stmt->bind_result($user_id);
    $stmt->fetch();
    $stmt->close();

    // If user exists, store the user_id in session
    if (!empty($user_id)) {
        $_SESSION['user_id'] = $user_id;
    } else {
        // Redirect if emp_id is invalid
        header("Location: ../index.php?error=invalid_emp_id");
        exit();
    }
// Function to generate a random 6-character alphanumeric password
function generatePasscode($length = 6) {
    $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $passcode = '';
    for ($i = 0; $i < $length; $i++) {
        $passcode .= $characters[random_int(0, strlen($characters) - 1)];
    }
    return $passcode;
}

// Loop through levels 2, 3, 4, and 5
for ($level = 2; $level <= 5; $level++) {
    // First, check if this user already has a password for the level
    $checkStmt = $conn->prepare("SELECT id FROM passwords WHERE user_id = ? AND level = ?");
    $checkStmt->bind_param("ii", $user_id, $level);
    $checkStmt->execute();
    $checkStmt->store_result();

    if ($checkStmt->num_rows == 0) {
        // No existing password for this level, so insert a new one
        $checkStmt->close();
        $passcode = generatePasscode();

        $insertStmt = $conn->prepare("INSERT INTO passwords (user_id, level, passcode) VALUES (?, ?, ?)");
        $insertStmt->bind_param("iis", $user_id, $level, $passcode);
        $insertStmt->execute();
        $insertStmt->close();
    } else {
        $checkStmt->close();
    }
}


    

    // ** Get MAC Address Based on OS **
    $mac_address = "Unknown"; 

    if (strtoupper(substr(PHP_OS, 0, 3)) === 'WIN') {
        // Windows: Extract only MAC address
        ob_start();
        system('getmac');
        $output = ob_get_clean();
        preg_match('/([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})/', $output, $matches);
        if (!empty($matches)) {
            $mac_address = $matches[0];
        }
    } elseif (PHP_OS === 'Linux') {
        // Linux: Extract MAC address
        $mac_output = shell_exec("ip link show | awk '/ether/ {print $2}'");
        $mac_list = explode("\n", trim($mac_output));
        $mac_address = !empty($mac_list) ? $mac_list[0] : "Unknown";
    } elseif (PHP_OS === 'Darwin') {
        // macOS: Extract MAC address
        $mac_address = trim(shell_exec("ifconfig en0 | awk '/ether/ {print $2}'"));
    }

    if (!$mac_address) {
        $mac_address = "Unknown";
    }

    // Debugging Output (Remove this after testing)
    file_put_contents("mac_debug.log", "OS: " . PHP_OS . " | MAC: " . $mac_address . "\n", FILE_APPEND);

    // Check if this MAC or IP is already registered
    $stmt = $conn->prepare("SELECT emp_id FROM user_login_details WHERE mac_address = ? OR ip_address = ?");
    $stmt->bind_param("ss", $mac_address, $ip_address);
    $stmt->execute();
    $stmt->bind_result($registered_emp_id);
    $stmt->fetch();
    $stmt->close();

    if ($registered_emp_id && $registered_emp_id != $emp_id) {
        echo json_encode(["status" => "error", "message" => "Unauthorized device detected."]);
        exit();
    }

    // Insert or update user login details
    $stmt = $conn->prepare("INSERT INTO user_login_details (emp_id, ip_address, mac_address, location, login_time)
                            VALUES (?, ?, ?, ?, NOW()) 
                            ON DUPLICATE KEY UPDATE ip_address = VALUES(ip_address), mac_address = VALUES(mac_address), location = VALUES(location)");
    $stmt->bind_param("ssss", $emp_id, $ip_address, $mac_address, $location);

    if ($stmt->execute()) {
        echo json_encode(["status" => "success"]);
    } else {
        echo json_encode(["status" => "error", "message" => "Database error: " . $stmt->error]);
    }
    exit();
}




?>
