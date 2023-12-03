<?php
// подключение к бд
$mysql = new mysqli('localhost', 'root', '', 'termosnab');
$mysql->set_charset('utf8');
if($mysql->connect_error){
    die("Ошибка: " . $mysql->connect_error);
}
?>