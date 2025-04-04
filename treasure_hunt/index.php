<?php
session_start();
include "config.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Login</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .login-container, #register-container {
            width: 350px;
            margin: 5% auto;
            padding: 20px;
            background: white;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
        }
        h2, h3 {
            margin-bottom: 20px;
            color: #333;
        }
        input {
            display: block;
            width: 90%;
            padding: 10px;
            margin: 10px auto;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        .info {
            text-align: left;
            font-size: 16px;
            color: #333;
            margin: 10px 0;
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }
        .error {
            color: red;
            font-size: 14px;
        }
        #next-btn, #register-btn {
            padding: 10px 20px;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
            width: 100%;
            transition: 0.3s;
        }
        #next-btn {
            display: none;
            background: linear-gradient(135deg, #314755, #26a0da);
        }
        #next-btn:hover {
            background: linear-gradient(135deg, #26a0da, #314755);
        }
        #register-btn {
            background: linear-gradient(135deg, #ff7e5f, #feb47b);
        }
        #register-btn:hover {
            background: linear-gradient(135deg, #feb47b, #ff7e5f);
        }
        #register-container {
            display: none;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Employee Login</h2>
        <input type="text" id="emp_id" placeholder="Enter Employee ID SA00000" required>
        <p id="error-msg" class="error"></p>

        <div id="user-info" style="display: none;">
            <div class="info"><strong>Name:</strong> <span id="name"></span></div>
            <div class="info"><strong>Phone:</strong> <span id="phone"></span></div>
            <div class="info"><strong>Designation:</strong> <span id="department"></span></div>
        </div>

        <button id="next-btn" onclick="proceed()">Next</button>
    </div>

    <div id="register-container">
        <h3>Register New Employee</h3>
        <input type="text" id="reg_name" placeholder="Full Name" required>
        <input type="text" id="reg_phone" placeholder="Phone Number" required>
        <input type="text" id="reg_department" placeholder="Department">
        <button id="register-btn" onclick="registerEmployee()">Register</button>
    </div>

    <script>
        $(document).ready(function() {
            $("#emp_id").on("input", function() {
                let emp_id = $(this).val().trim();
                if (emp_id.length > 5) {  
                    $.ajax({
                        url: "register.php",
                        method: "POST",
                        data: { emp_id: emp_id },
                        dataType: "json",
                        success: function(response) {
                            if (response.status === "found") {
                                $("#name").text(response.name);
                                $("#phone").text(response.phone);
                                $("#department").text(response.department);
                                $("#error-msg").text("");
                                $("#user-info").slideDown();
                                $("#next-btn").fadeIn();
                                $("#register-container").hide();
                            } else {
                                $("#user-info").slideUp();
                                $("#next-btn").fadeOut();
                                $("#error-msg").text("No user found!").css("color", "red");
                                $("#register-container").fadeIn();
                            }
                        }
                    });
                } else {
                    $("#user-info").slideUp();
                    $("#next-btn").fadeOut();
                    $("#register-container").hide();
                    $("#error-msg").text("");
                }
            });
        });

        function registerEmployee() {
            let emp_id = $("#emp_id").val().trim();
            let name = $("#reg_name").val().trim();
            let phone = $("#reg_phone").val().trim();
            let department = $("#reg_department").val().trim();

            if (!emp_id || !name || !phone) {
                alert("Please fill in all required fields!");
                return;
            }

            $.ajax({
                url: "register.php",
                method: "POST",
                data: { register: "1", emp_id: emp_id, name: name, phone: phone, department: department },
                dataType: "json",
                success: function(response) {
                    if (response.status === "registered") {
                        alert("Registered Successfully! Refresh the page to login.");
                        $("#register-container").hide();
                        $("#emp_id").trigger("input");
                    } else {
                        alert(response.message || "Registration failed!");
                    }
                }
            });
        }

        function proceed() {
            let emp_id = $("#emp_id").val().trim();

            if (!emp_id) {
                alert("Employee ID is required!");
                return;
            }

            $.getJSON("https://api64.ipify.org?format=json", function(data) {
                let ip_address = data.ip;
                let location = "Unknown";

                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(
                        function(position) {
                            let latitude = position.coords.latitude;
                            let longitude = position.coords.longitude;
                            location = latitude + ", " + longitude;
                            sendLoginRequest(emp_id, ip_address, location);
                        },
                        function(error) {
                            console.warn("Location access denied or error: " + error.message);
                            sendLoginRequest(emp_id, ip_address, location);
                        }
                    );
                } else {
                    sendLoginRequest(emp_id, ip_address, location);
                }
            });
        }

        function sendLoginRequest(emp_id, ip_address, location) {
            $.ajax({
                url: "store_login.php",
                method: "POST",
                data: {
                    emp_id: emp_id,
                    ip_address: ip_address,
                    location: location
                },
                dataType: "json",
                success: function(response) {
                    if (response.status === "success") {
                        window.location.href = "game/game_start.php?emp_id=" + encodeURIComponent(emp_id);
                    } else if (response.status === "error") {
                        alert("Unauthorized login attempt! " + response.message);
                        window.location.href = "false_login.php?emp_id=" + encodeURIComponent(emp_id);
                    } else {
                        alert("An unexpected error occurred. Please try again.");
                    }
                },
                error: function() {
                    alert("Server connection failed. Please check your internet.");
                }
            });
        }
    </script>
</body>
</html>
