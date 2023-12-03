<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Термоснаб - Личный Кабинет</title>
    <!-- иконка -->
    <link rel="shortcut icon" href="./img/logotype.png" type="image/x-icon">
    <!-- стили -->
    <link rel="stylesheet" href="../style/main.css">
    <link rel="stylesheet" href="../style/kabinet.css">
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
            <p>Вы здесь: => Главная страница</p>
            <a href="./shopCart.php">Корзина</a>
        </div>

        <!-- кабинет -->
        <h1>Здравствуйте, 
            <?php
                if(isset($_SESSION ['name'])) {
                    echo $_SESSION ['name'];
                } else {
                    echo "Незнакомец";
                }
            ?>
        </h1>

        <!-- товары -->
        <!-- список товаров -->
        <div class="container">
        <?php
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

        <!-- Информация о пользователе -->
        <h1>Данные:</h1>
        <?php
        if(isset($ID)) {
            $sqlDataBase = "SELECT * FROM `User` WHERE ID = $ID";

            $result2 = $mysql->query($sqlDataBase);
            foreach($result2 as $row) {
                echo "
                <div class=dataBase'>
                    <p>Имя: ".$row['Name']."</p>
                    <p>Фамилия, отчество: ".$row['Full_name']."</p>
                    <p>Логин: ".$row['Log_In']."</p>
                    <p>Почта: ".$row['Email']."</p>
                </div>";
            }
        }
        ?>

        <!-- поисковая строка на товары в интернет-ресурсе -->
        <form class="poisk" method="POST">
            <input class="form-inp" type="text" name="query" id="query" placeholder="Введите запрос...">
            <button class="batton" type="submit">Поиск</button>
        </form>

        <!-- php код -->
        <?php
            // Получение запроса из формы
            $query = $_POST['query'];
            // проверка на пустые поля 
            if(isset($query)) {
                // подключение к бд
            require('../php/connect.php');

            // Выполнение запроса к базе данных
            $sql2 = "SELECT * FROM `Product` WHERE `Name` LIKE '%$query%'";
            $result2 = $mysql->query($sql2);

            echo "<div class='container'>";
            // Вывод результатов поиска
            while ($row2 = mysqli_fetch_assoc($result2)) {
                echo "
                <div class='product'>
                <form action='../php/addProduct.php' method='POST'>
                    <div class='product-img'>
                        <img src='".$row2['Img']."' alt='Котел'>
                    </div>
                    <input type='text' name='product_id' id='product_id' hidden value='".$row['ID']."'/>
                    <p class='product-title'>".$row2['Name']."</p>
                    <p class='product-Price'>".$row2['Price']." ₽</p>
                    <p class='product-Quantity'>Осталось: ".$row2['Quantity']."</p>";
                    if(isset($_SESSION ['ID_User'])) {
                        echo " <input type='submit' class='to-cart' value='В корзину'/>";
                    }
                    echo "</form>"; 
                echo "</div>";
            }
            echo "</div>";
            } else {
                echo "Не оставляйте пустые поля!";
            }
            ?>

        <br><br><br>
        <div>
            <!-- кнопка выхода с профиля -->
            <?php
                if(isset($_SESSION ['name'])) {
                    echo "<div class='exit'>
                    <a class='show' href='../php/exit.php'>Завершить сеанс</a>
                    </div>";
                }
            ?>
        </div>


    </div>
    <br>
    <!-- footer -->
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