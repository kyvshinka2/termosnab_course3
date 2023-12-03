<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Термоснаб - Авторизация</title>
    <!-- иконка -->
    <link rel="shortcut icon" href="../img/logotype.png" type="image/x-icon">
    <!-- стили -->
    <link rel="stylesheet" href="../style/main.css">
    <link rel="stylesheet" href="../style/registr.css">
</head>
<body>
    <!-- header -->
    <?php
        session_start();
        require('../php/header-page.php')
    ?>

    <div class="content">
        <div class="bottomInfoHead">
            <p>Вы здесь: => <a href="../inedx.html">Главная страница</a> => <a href="./registrasia.html">Регистрация</a> => Авторизация</p>
            <a href="./shopCart.php">Корзина</a>
        </div>

        <!-- регистрация, авторизация -->
        <div class="container text-align-reg">
            <form action="../php/autor.php" method="post">
                <input type="text" class="form-inp" name="login" id="login" placeholder="Введите логин:"><br><br>
                <input type="password" class="form-inp" name="password" id="password" placeholder="Введите пароль:"><br><br>
                <input type="submit" class="batton" value="Войти">

                <p>Если вы еще не зарегистрированы, то <b><a href="./registrasia.php">Зарегистрируйтесь</a></b></p>
            </form>
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