<?php
session_start();

$login = $_POST['login'];
$password = $_POST['password'];
// хеширование пароля
$hash = password_hash($password, PASSWORD_DEFAULT);

// проверка на пустые поля 
if(empty($login) || empty($password)) {
    echo "Не оставляйте пустые поля!";
    exit();
}

// подключение к бд
$mysql = new mysqli('localhost', 'root', '', 'termosnab');
$mysql->set_charset('utf8');
if($mysql->connect_error){
    die("Ошибка: " . $mysql->connect_error);
}

// обратное хеширование для проверки пароля
// $newPass = password_verify($password, $hash);
// $query ="SELECT * FROM `Student` WHERE `Log_In` = '$login' AND `Password` = '$newPass'";


$query = "SELECT * FROM `User` WHERE Log_In = '$login'";
// выполнение запроса
$result = $mysql->query($query);

if($result) {
    foreach($result as $row) {
        $proverka_password = $row["Password"];
        // проверка хешированного пароля
        if(password_verify($password, $proverka_password)) {
            $_SESSION ['name'] = $row['Name'];
            $_SESSION ['ID_User'] = $row['ID'];
            header('Location: ../page/kabinet.php');
        } else {
            echo "Пароль неверный";
        }
    }
}

$mysql->close();
?>