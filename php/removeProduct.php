<?php
    session_start();
    
    $product_id = $_POST['product_id'];

    require("./connect.php");

    $sql = "DELETE FROM `Order` WHERE ID_Product = $product_id;";
    $result = $mysql->query($sql);

    if($result) {
        header("Location: ../page/shopCart.php");
    } else {
        die("Ошибка: " . $mysql->error);
    }
?>