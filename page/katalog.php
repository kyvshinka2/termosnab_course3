<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Термоснаб - Каталог</title>
    <!-- иконка -->
    <link rel="shortcut icon" href="../img/logotype.png" type="image/x-icon">
    <!-- стили -->
    <link rel="stylesheet" href="../style/main.css">
    <link rel="stylesheet" href="../style/katalog.css">
</head>
<body>
    <!-- header -->
    <?php
        session_start();
        require('../php/header-page.php')
    ?>

    <div class="content">
        <div class="bottomInfoHead">
            <p>Вы здесь: => <a href="../inedx.php">Главная страница</a> => Каталог</p>
            <a href="./shopCart.php">Корзина</a>
        </div>
        <br> 

        <!-- каталог -->
        <div class="container">
                    <div class="product">
                        <div class="product-img">
                            <a href="./kotel.php"><img src="../img/котел.jpg" alt="котел"></a>
                        </div>
                        <p class="product-title">
                            <a href="./kotel.php">Котлы</a>
                        </p>
                    </div>
                    <div class="product">
                        <div class="product-img">
                            <a href="./radiator.php"><img src="../img/радиатор.png" alt="радиатор"></a>
                        </div>
                        <p class="product-title">
                            <a href="./radiator.php">Радиаторы</a>
                        </p>
                    </div>
                    <div class="product">
                        <div class="product-img">
                            <a href="./svarka.php"><img src="../img/сварка.jpg" alt="сварка"></a>
                        </div>
                        <p class="product-title">
                            <a href="./svarka.php">Сварочное оборудование</a>
                        </p>
                    </div>
                    <div class="product">
                        <div class="product-img">
                            <a href="./instrument.php"><img src="../img/инструмент.jpg" alt="инструмент"></a>
                        </div>
                        <p class="product-title">
                            <a href="./instrument.php">Инструменты</a>
                        </p>
                    </div>
                    <div class="product">
                        <div class="product-img">
                            <a href="./truboprovod.php"><img src="../img/трубопровод.jfif" alt="трубопровод"></a>
                        </div>
                        <p class="product-title">
                            <a href="./truboprovod.php">Трубопровод</a>
                        </p>
                    </div>
                    <div class="product">
                        <div class="product-img">
                            <a href="./gorelka.php"><img src="../img/горелка_наддувная.jfif" alt="горелка надувная"></a>
                        </div>
                        <p class="product-title">
                            <a href="./gorelka.php">Горелки надувные</a>
                        </p>
                    </div>
        </div>
    </div>
    <br>
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