<?php
session_start();
// данные о клиенте
$fio = $_POST['fio'];
$number = $_POST['number'];
$email = $_POST['email'];
$bank = $_POST['bank'];

$user_id = $_SESSION['ID_User'];

require("./connect.php");

// заносим данные в таблицу доставки
$sql = "UPDATE `User` SET `Full_name`='$fio',`Number`=$number,`Email`='$email',`Bank_card`=$bank WHERE ID = $user_id;";
$result = $mysql->query($sql);
if($result) {
    header('Location: ../page/kabinet.php');
} else {
    die("Ошибка: " . $mysql->error);
}

?>