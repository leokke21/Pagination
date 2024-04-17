<?php
require_once 'dbConnect.php';
require_once 'MusicGroup.php';

$db = new DbConnect();
$db->connect_pdo();
$MusicGroups = new MusicGroup($db);
$rows = $MusicGroups->getAll();

$count = $MusicGroups->allRecrods();
$countMusic_Pages = 5;
$page_Count = (int) ceil ((int) $count[0]['kol']/ $countMusic_Pages);
// print_r( $rows[0]);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Музыканты</h1>
    <div class="content">
        <?php
        if(count($_GET) == 0) {
            $page = 0;

        } else {
            $page = $_GET['page'];
        }
        for($i = $page * $countMusic_Pages; $i < ($page + 1)* $countMusic_Pages; $i++) {

            if($rows[$i]['id_band'] != NULL) {
                echo " <div class ='card'>".
                "<div class='card-front'> <p>  <br>";
                echo $rows[$i]['name'].  "<br>";
                echo $rows[$i]['year']. "<br></p>" ;
                echo " <p> Солист: ". $rows[$i]['frontman']."</p> <br>";
                echo "   <p><img src='".$rows[$i]['imаge']."' alt=''></p>" ; 
                echo "   <p><a href='pageone.php?param =".$rows[$i]['id_band']."'>Дальше</a></p> ";
                echo " </div>"; ?>

                <!-- Обратная сторона карточки -->
                <div class="backstory">
                    <p><?= $rows[$i]['discription'] ?></p>
                    <?php echo "   <p><a href='pageone.php?param =".$rows[$i]['id_band']."'>Дальше</a></p> "; ?>
                </div>

                <!-- Конец обратной стороны -->
                <?php
                
                echo " </div> ";
                if($i>= ((int) $count[0]['kol']-1)) break;
            } 
        }
        ?>
    </div>
    <div class="page_list" style="text-align: center">
            <?php
                for( $p = 0; $p < $page_Count; $p++) { 
                    if($_GET['page'] == $p) { ?>

                        <a href="?page=<?= $p ?>">
                    <button class="page_button selected"><?= $p +1 ?></button>
                    <?php } else {
                    ?>
                
                    <a href="?page=<?= $p ?>">
                    <button class="page_button"><?= $p +1 ?></button>
                </a>

            <?php  }}; ?>
    </div>

    
    <!-- Обратная связь -->
    <div id="callback">
        <p>
            Обратитесь к нам! Предлагаем нашу помощь.
        </p>
    </div>
</body>
</html>
<script>
//     document.getElementsByClassName('page_button');
//     for()
</script>