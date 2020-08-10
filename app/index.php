<?php

$mysqli_connection = new MySQLi('devmysql', 'test1234', 'test1234', 'test1234');
if ($mysqli_connection->connect_error) {
   echo "Not connected, error: " . $mysqli_connection->connect_error;
}
else {
   echo "Connected.";
}