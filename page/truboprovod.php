<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Термоснаб - Трубопровод</title>
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
            <p>Вы здесь: => <a href="../inedx.php">Главная страница</a> => <a href="./katalog.php">Каталог</a> => Трубопровод </p>
            <a href="./shopCart.php">Корзина</a>
        </div>
        <br> 

        <!-- каталог -->
        <div class="container">
        <?php
            session_start();
            require('../php/connect.php');

            $sql = "SELECT * FROM `Product` WHERE `Category` = 'Трубопровод'";
            $result = $mysql->query($sql);
            foreach ($result as $row) {
                echo "
                <div class='product'>
                <form action='../php/addProduct.php' method='POST'>
                    <div class='product-img'>
                        <img src='".$row['Img']."' alt='Котел'>
                    </div>
                    <input type='text' name='product_id' id='product_id' hidden value='".$row['ID']."'/>
                    <p class='product-title'>".$row['Name']."</p>
                    <p class='product-Price'>".$row['Price']." ₽</p>
                    <p class='product-Quantity'>Осталось: ".$row['Quantity']."</p>";
                    if(isset($_SESSION ['ID_User'])) {
                        echo " <input type='submit' class='to-cart' value='В корзину'/>";
                    }
                    echo "</form>"; 
                echo "</div>";
            }
        ?>
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