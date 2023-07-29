<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");

$host = $_SERVER['HTTP_HOST'];
$port = $_SERVER['SERVER_PORT'];
$address = "$host:$port";

if ($_SERVER["REQUEST_METHOD"] === "GET") {
    $myVariable = "Hello, Flutter!";
    echo $myVariable;
} else {
    http_response_code(405); // Method Not Allowed
}