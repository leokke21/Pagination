<?php
require_once 'dbConnect.php';
require_once 'MusicGroup.php';

$db = new DbConnect();
$db->connect_pdo();
$MusicGroups = new MusicGroup($db);

$rows = $MusicGroups->getById($_GET['param_']);

// print_r( $rows[0]);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="styleone.css">
</head>
<body>
    <div class="content">

            <h1>Карточка <?=$rows['name'] ?> </h1>

        <div class="item">

            <img src="<?=$rows['imаge'] ?>" alt="Фото солиста группы">
            <div class="info">
                <p><?= $rows['name']?></p>
                <p><?= $rows['year']?></p> <br>
                <p>Солист: <?= $rows['frontman']?></p> <br>
                <p><?= $rows['discription']?></p>
                <a href="index.php?page=0">Назад</a>
            </div>
        </div>
                
    </div>
    
</body>
</html>