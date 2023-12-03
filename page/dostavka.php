<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Термоснаб - Доставка и оплата</title>
    <!-- иконка -->
    <link rel="shortcut icon" href="./img/logotype.png" type="image/x-icon">
    <!-- стили -->
    <link rel="stylesheet" href="../style/main.css">
    <link rel="stylesheet" href="../style/dostavka.css">
</head>
<body>
    <!-- header -->
    <?php
        session_start();
        require('../php/header-page.php')
    ?>

    <div class="content">
        <div class="bottomInfoHead">
            <p>Вы здесь: => <a href="../inedx.php">Главная страница</a> => Доставка и оплата</p>
            <a href="./shopCart.php">Корзина</a>
        </div>
        
        <div class="dostavka">
            <div class="dostavka-text">
                <h1>Способы доставки</h1>
                <ul>
                    <li><p>Доставка курьером</p></li>
                    <li><p>Доставка транспортной компанией</p></li>
                    <li><p>Бесплатная доставка Бесплатно при заказе от 20000 рублей</p></li>
                    <li><p>Самовывоз</p></li>
                </ul>

                <h1>Способы оплаты</h1>
                <ul>
                    <li><p>Безналичная оплата</p></li>
                    <li><p>Наличными</p></li>
                </ul>
                <br>
                <span>! Доставка только по предоплате !</span>
            </div>
            <div class="img">
                <img src="../img/cargo181.jpg" alt="грузовик">
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