<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Термоснаб - Корзина</title>
    <!-- иконка -->
    <link rel="shortcut icon" href="../img/logotype.png" type="image/x-icon">
    <!-- стили -->
    <link rel="stylesheet" href="../style/main.css">
    <link rel="stylesheet" href="../style/katalog.css">
    <link rel="stylesheet" href="../style/shopCart.css">
</head>
<body>
    <!-- header -->
    <?php
        session_start();
        require('../php/header-page.php')
    ?>

    <div class="content">
        <div class="bottomInfoHead">
            <p>Вы здесь: => <a href="../inedx.php">Главная страница</a> => Корзина </p>
            <a href="./shopCart.php">Корзина</a>
        </div>
        <br> 

        <!-- каталог -->
        <p>Добро пожаловать, <?php
            if(isset($ID)) {
                echo $_SESSION ['name'];
            }
        ?>. Здесь список ваших товаров:</p>

        <!-- список товаров -->
        <div class="container">
        <?php
            session_start();
            require('../php/connect.php');
            // id пользователя авторизированного
            $ID = $_SESSION ['ID_User'];

            if(isset($ID)) {
            // запросы
            $sql = "SELECT Product.ID, Name, Img, Price FROM `Order` INNER JOIN Product ON `Order`.ID_Product = Product.ID WHERE ID_Client = $ID";
            $summ = "SELECT SUM(Price) as sum FROM `Order` INNER JOIN Product ON `Order`.ID_Product = Product.ID WHERE ID_Client = $ID;";

            $result = $mysql->query($sql);

            if(mysqli_num_rows($result) > 0) {
                foreach($result as $row) {
                    // вывод товаров с бд в корзине
                    echo "
                    <div class='product'>
                        <form action='../php/removeProduct.php' method='POST'>
                            <div class='product-img'>
                                <img src='".$row['Img']."' alt='Котел'>
                            </div>
                            <input type='text' name='product_id' id='product_id' hidden value='".$row['ID']."'/>
                            <p class='product-title'>".$row['Name']."</p>
                            <p class='product-Price'>".$row['Price']." ₽</p>
                            <input type='submit' class='from-cart' value='Удалить'/>";
                        echo "</form>"; 
                    echo "</div>";
                }
                $sum_value = mysqli_fetch_assoc($mysql->query($summ))['sum'];
            }
            } else {
                echo "<a class='katalog-a' href='./autorisasia.php'>Авторизуйтесь</a>";
            }
        ?>
        </div>

        <div class="sum">
            <?php
                // итоговая сумма заказа
                if($sum_value > 0) {
                    echo "<p class='sum-p'>Итоговая сумма: ".$sum_value."₽</p>";
                    echo "
                    <form action='' method='POST'>
                    <input type='submit' name='oformitOrder' value='Оформить заказ'/>
                    <input type='submit' name='skratOrder' value='Скрыть форму'/>
                    </form>";
                } else {
                    echo "Товаров в корзине нет, перейдите в <a class='katalog-a' href='./katalog.php'>Каталог</a>";
                }   
            ?>
        </div>
<br>
        <!-- форма оформления заказа -->
        <div class="form-align">
        <div class="form" id="form">
            <?php
                if(isset($_POST['oformitOrder'])) {
                    echo "
                    <form action='../php/oformitOrder.php' method='post'>
                        <p>Введите Фамилию и отчетсво:</p>
                        <input type='text' name='fio' placeholder='Введите фамилию, отчество'>
                        <p>Введите номер телефона:</p>
                        <input id='phone' type='number' name='number' placeholder='Введите Номер'>
                        <p>Введите почту:</p>
                        <input id='email' type='text' name='email' placeholder='Введите почту'>
                        <p>Номер банковской карты:</p>
                        <input id='bank' type='number' name='bank' placeholder='Введите номер карты'><br><br>
                        <input type='submit' value='Отправить'/>
                    </form>";
                } elseif(isset($_POST['skratOrder'])) {
                    echo "Хотите оформить доставку? Нажмите кнопочку :3";
                }
            ?>
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
    

</body>
</html>