<?php
class MusicGroup {
    private $PDO;  //соединение, подключение БД
    private $tablemusicband ='music_band';  //Имя таблицы
            //поля
    public $id_band;
    public $name;
    public $year;
    public $frontman;
    public $imаge;
    public $discription;


     //конструктор для подключения
     public function __construct($db)
     {
         $this->PDO=$db;
     }
     // МЕТОДЫ


         //Все записи
     public function getAll()
     {
        $query = "SELECT * FROM ".$this ->tablemusicband;
            $stmt = $this->PDO->query($query)->fetchAll();
            return $stmt;
     }

        //  1 By ID
     public function getById($id) {
        $query = "SELECT * FROM ".$this ->tablemusicband." a WHERE a.id_band = $id";
        $stmt = $this->PDO->query($query)->fetchAll();
        return $stmt[0];
    }
    
     // получение данных по ID
     public function readName($id)
     {
       //НАПИСАТЬ КОД
     }
     
    // получение количества записей
     function allRecrods(){
        
            $query = "SELECT COUNT(*) AS kol FROM " . $this->tablemusicband;
            $result = $this->PDO->query($query)->fetchAll();
            return $result;

     }

}
