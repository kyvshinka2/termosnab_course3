<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Термоснаб - главная страница</title>
    <!-- иконка -->
    <link rel="shortcut icon" href="./img/logotype.png" type="image/x-icon">
    <!-- стили -->
    <link rel="stylesheet" href="./style/main.css">
    <link rel="stylesheet" href="./style/slider.css">
    <link rel="stylesheet" href="./style/index.css">
</head>
<body>
    <!-- шапка -->
    <?php
        session_start();
        require('./php/header.php');
    ?>

    <div class="content">
        <div class="bottomInfoHead">
            <p>Вы здесь: => Главная страница</p>
            <a href="../page/shopCart.php">Корзина</a>
        </div>

        <br>
        <!-- слайдер -->
        <main>
            <div class="slider-container">
            <div class="slider">
              <img src="./img/радиаторы.jpg">
              <img src="./img/котлы.jpg">
              <img src="./img/инструменты.jpg">
            </div>
            <button class="prev-button" aria-label="Посмотреть предыдущий слайд">&lt;</button>
            <button class="next-button" aria-label="Посмотреть следующий слайд">&gt</button>
          </div>
        </main>
    </div>

    <br>
    <!-- разделитель -->
    <div class="block-razdel"></div>
    <br>

    <div class="content">
        <!-- кто мы? + сертификат -->
        <div class="who-me-div">
            <div class="text">
                <h1>О компании ООО “ТЕРМОСНАБ”</h1>
                <p>Наша компания является официальным дилером и сервисным центром по Челябинской области торговых марок:</p>
                <div class="block-mar">
                    <div class="left">
                        <p>- Hydrosta</p>
                        <p>- DAESUNG</p>
                        <p>- STOUT</p>
                        <p>- Olympia</p>
                        <p>- Arderia</p>
                        <p>- LavoroEco</p>
                        <p>- STI</p>
                        <p>- MeerPlast</p>
                    </div>
                    <div class="left">
                        <p>- Аквасторож</p>
                        <p>- КСИТАЛ</p>
                        <p>- ЛЕМАКС</p>
                        <p>- Termopoint</p>
                        <p>- ROMMER</p>
                        <p>- СЕВЕР</p>
                        <p>- GALMET</p>
                        <p>- LD</p>
                    </div>
                </div>
                <h1><a href="../page/o_companii.php">Подробнее...</a></h1>
            </div>
            <div class="img">
                <img class="sertificat" src="./img/сертификат.jpg" alt="сертификат соответсвия">
            </div>
        </div>
    </div>

    <br>
    <!-- разделитель -->
    <div class="block-razdel"></div>
    <br>

    <div class="content">
        <!-- почему мы? -->
        <div class="why-me">
            <div class="img">
                <img class="vid-block-2" src="./img/почему-мы.jpg" alt="Улица">
            </div>
            <div class="text-why">
                <h1>Почему мы?</h1>
                <p>• Быстрая доставка</p>
                <p>• Оперативные ответы на вопросы</p>
                <p>• Удобное расположение склада</p>
                <p>• Много положительных <a class="a-text" href="./page/o_companii.php">отзывов</a></p>
                <p>• Сервисное и гарантийное обслуживание после покупки</p>
                <p>• Два вида <a class="a-text" href="./page/dostavka.html">доставки</a></p>
                <p>• Гарантия возврата денег или обмен товара</p>
                <p>• Имеется рассрочка или кредит</p>
                <p>• Удобный <a class="a-text" href="./page/katalog.html">каталог</a> товаров</p>
            </div>
        </div>
    </div>

    <br>
    <!-- разделитель -->
    <div class="block-razdel"></div>
    <br>

    <div class="content">
        <div class="karta">
            <h1>Мы ближе, чем вы думаете</h1>
            <iframe src="https://yandex.ru/map-widget/v1/?um=constructor%3A0716dea880a9650656150bc9d38288230364ddef520257bd095f50e44564ff4e&amp;source=constructor" width="100%" height="400" frameborder="0"></iframe>
        </div>
    </div>

    <br>

    <!-- подвал футер -->
    <?php
        require('./php/footer.php');
    ?>
    
    <!-- шрифты -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400;500&family=Comfortaa&family=Play:wght@700&display=swap" rel="stylesheet">
    
    <!-- slider -->
    <script src="./script/slider.js"></script>


</body>
</html>