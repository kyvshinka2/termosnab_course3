<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Термоснаб - О компании</title>
    <!-- иконка -->
    <link rel="shortcut icon" href="../img/logotype.png" type="image/x-icon">
    <!-- стили -->
    <link rel="stylesheet" href="../style/main.css">
    <link rel="stylesheet" href="../style/o_companii.css">
</head>
<body>
    <!-- header -->
    <?php
        session_start();
        require('../php/header-page.php')
    ?>

    <div class="content">
        <div class="bottomInfoHead">
            <p>Вы здесь: => <a href="../inedx.php">Главная страница</a> => О компании</p>
            <a href="./shopCart.php">Корзина</a>
        </div>

        <h1>Мы предоставляем огромный ассортимент:</h1>
        <div class="assortiment">
            <div class="block-tovar">
                <p>- Радиаторы отопления</p>
                <p>- Насосное оборудование</p>
                <p>- Котлы отопления</p>
                <p>- Электроконвекторы</p>
                <p>- Счетчики воды и счетчики газа</p>
                <p>- Труба металлопластиковая, полипропиленовая и медная</p>
                <p>- Тремометры, манометры</p>
                <p>- Запорная арматура</p>
            </div>
            <div class="block-tovar">
                <p>- Элементы трубопровода</p>
                <p>- Стабилизаторы напряжения</p>
                <p>- Источники бесперебойного питания</p>
                <p>- Баки мембранные</p>
                <p>- Бойлеры косвенного нагрева</p>
                <p>- Бензопилы</p>
                <p>- Печи для бани</p>
            </div>
        </div>
    </div>

    <!-- разделитель -->
    <div class="block-razdel"></div>

    <div class="content">
        <div class="contact">
            <div class="number">
                <h1>Свяжитесь с нами</h1>
                <p>Константин: <a href="">+79043080017</a></p>
                <p>Евгений: <a href="">+79090900302</a></p>
                <p>Роман: <a href="">+79043019501</a></p>
            </div>
            <div class="pochta">
                <h1>Электронная почта</h1>
                <p>E-mail: <a href="">tsnab74@bk.ru</a></p>
            </div>
            <div class="urDannai">
                <h1>Юр. данные</h1>
                <p>ООО «ТЕРМОСНАБ»</p>
                <p>ИНН: 7447279644</p>
                <p>КПП: 744701001</p>
            </div>
        </div>
    </div>

    <!-- разделитель -->
    <div class="block-razdel"></div>
    <br>

    <!-- оставить свой отзыв -->
    <div class="content">
        <div class="block">
            <div class="block-form-otz">
                <h1>Поделитесь впечатлением :3</h1>
                <!-- форма для заполнения -->
                <form class="form" action="../php/otzav.php" method="post">
                    <input type="text" class="form-inp" name="login" id="login" placeholder="Введите логин" minlength="3" maxlength="30"><br><br>
                    <input type="text" class="form-inp-2" name="content" id="content" placeholder="Введите отзыв" minlength="3" maxlength="300"><br><br>
                    <input type="number" class="form-inp-2" name="number" id="number" placeholder="Поставьте оценку: от 1 до 10" max="10"><br><br>
                    <input type="submit" class="batton" value="Отправить">
                </form>
                <p>
                    <?php 
                        session_start();
                        if(isset($_SESSION['polePustoe'])) {
                            echo $_SESSION['polePustoe'];
                        }
                    ?>
                </p>
            </div>
        </div>

        <br>
    </div>

    <!-- разделитель -->
    <div class="block-razdel"></div>

    <!-- отзывы -->
    <div class="content">
        <h1>Отзывы клиентов:</h1>
        <div class="otzav">
             <!-- вывод отзывов из бд -->
            <?php
                // подключение к бд
                $mysql = new mysqli('localhost', 'root', '', 'termosnab');
                $mysql->set_charset('utf8');
                if($mysql->connect_error){
                    die("Ошибка: " . $mysql->connect_error);
                }

                $sql = "SELECT Log_In, Comment, Number FROM Feedback";
                $result2 = $mysql->query($sql);
                // вывод отзывов
            ?>
            <p>
                <?php 
                    while ($row = mysqli_fetch_assoc($result2)) {
                        echo "<b>".$row['Log_In']."</b> - ".$row['Number']."/10 <br>";
                        echo $row['Comment']."<br>"."<br>";
                    }

                    mysqli_close($mysql);
                ?>
            </p>
        </div>
    </div>

    <!-- подвал футер -->
    <?php
        require('../php/footer-page.php');
    ?>

    
    <!-- шрифты -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400;500&family=Comfortaa&family=Play:wght@700&display=swap" rel="stylesheet">
    
    <!-- slider -->
    <script src="./script/slider.js"></script>


</body>
</html>