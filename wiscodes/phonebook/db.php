<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "todo_list";

    $connection = new mysqli($servername, $username, $password, $dbname);
    
    if ($connection->connect_error) {
        die("Connection failed: " . $connection->connect_error);
    }

    echo "Connected successfully";
?>