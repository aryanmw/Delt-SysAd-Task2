<?php
$host = "localhost";
$db_name = "complaints_db";
$username = "aryanw";
$password = "root";
$connection = "null";
try{
$connection = new PDO("mysql:host=" . $host . ";dbname=" . $db_name, $username, $password);
$connection->exec("set names utf8");
}catch(PDOException $exception){
echo "Connection error: " . $exception->getMessage();
}

function saveData($username, $complaint){
global $connection;
$query = "INSERT INTO userComplaints(username, complaint, time) VALUES( :username, :complaint, :time)";

$callToDb = $connection->prepare( $query );
$username=htmlspecialchars(strip_tags($username));
$complaint=htmlspecialchars(strip_tags($complaint));
$time=time();
$callToDb->bindParam(":username",$username);
$callToDb->bindParam(":complaint",$complaint);
$callToDb->bindParam(":time",$time);

if($callToDb->execute()){
return'<h2 style="text-align:center;">We will get back to you very shortly!</h2>';
}
}

if( isset($_POST['submit'])){
$username = htmlentities($_POST['username']);
$complaint = htmlentities($_POST['complaint']);

$result = saveData($username, $complaint);
echo $result;
}
else{
echo '<h2>Something went wrong</h2>';
}
?> 
