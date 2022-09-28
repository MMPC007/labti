<?php
    include_once("Publicacion.php");
    class Libro extends Publicacion{
        private $isbn;

        public function __construct(){
            $this->isbn = "";
        }

        public function setIsbn($isbn){$this->isbn = $isbn;}
        public function getIsbn(){return $this->isbn;}
    }
?>