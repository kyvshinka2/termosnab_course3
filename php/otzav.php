<!-- php код для отправки отзыва -->
<?php
    $login = $_POST['login'];
    $content = $_POST['content'];
    $number = $_POST['number'];

    // проверка на пустые поля 
if(empty($login) || empty($content) || empty($number)) {
    header('Location: ../page/o_companii.php');
    session_id();
    $_SESSION['polePustoe'] = "Не оставляйте пустые поля!";
    exit();
}

    // подключение к бд
$mysql = new mysqli('localhost', 'root', '', 'termosnab');
$mysql->set_charset('utf8');
if($mysql->connect_error){
    die("Ошибка: " . $mysql->connect_error);
}
// запрос (запись в бд)
$query = "INSERT INTO Feedback (Log_In, Comment, Number) VALUES ('$login', '$content', '$number')";
// выполнение запроса
$result = $mysql->query($query);

  // проверка на пустые поля 
    if ($result) {
        echo "Отзыв успешно сохранен";
        header('Location: ../page/o_companii.php');
    } else {
        echo "Ошибка: ".$sql."<br>" . mysqli_error($mysql);
    }


mysqli_close($mysql);
?>