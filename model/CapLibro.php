<?php
    include_once("Publicacion.php");
    class CapLibro extends Publicacion{
        private $isbn;
        private $doi;

        public function __construct(){
            $this->isbn = "";
            $this->doi = "";
        }

        public function setIsbn($isbn){$this->isbn = $isbn;}
        public function getIsbn(){return $this->isbn;}

        public function setDoi($doi){$this->doi = $doi;}
        public function getDoi(){return $this->doi;}
    }
?>