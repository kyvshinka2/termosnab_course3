<?php
session_start();

$user_id = $_SESSION['ID_User'];
$product_id = $_POST['product_id'];
$ID_Delivery = 1;
$comment = 0;

require("./connect.php");

$sql = "INSERT INTO `Order` (`ID_Product`, `ID_Delivery`, `ID_Client`, `Comment`) VALUES ($product_id, $ID_Delivery, $user_id, $comment);";
$result = $mysql->query($sql);

if($result) {
    header("Location: ../page/katalog.php");
} else {
    die("Ошибка: " . $mysql->error);
}
?>