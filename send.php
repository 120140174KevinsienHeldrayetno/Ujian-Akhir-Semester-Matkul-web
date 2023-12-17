<?php

session_start();


$host = "localhost";
$username = "root";
$password = "";
$dbname = "db_uas";

$conn = mysqli_connect($host, $username, $password, $dbname);

if (!$conn) {
    die("Koneksi ke database gagal: " . mysqli_connect_error());
}


if ($_SERVER["REQUEST_METHOD"] === "POST") {
  $nama = $_POST["nama"];
  $opclass = implode(", ", $_POST["opclass"]);
  $jenis_skill = $_POST["jenis_skill"];
  $country = $_POST["country"];


  $browser = $_SERVER['HTTP_USER_AGENT'];


  $ip_address = $_SERVER['REMOTE_ADDR'];




  $query = "INSERT INTO pemesanan (nama, opclass, jenis_skill, country, browser, ip_address) VALUES (?, ?, ?, ?, ?, ?)";
  $stmt = mysqli_prepare($conn, $query);


  mysqli_stmt_bind_param($stmt, 'ssssss', $nama, $opclass, $jenis_skill, $country, $browser, $ip_address);


  mysqli_stmt_execute($stmt);


  mysqli_stmt_close($stmt);


  echo json_encode(["success" => "Berhasil Tersimpan."]);
}


?>