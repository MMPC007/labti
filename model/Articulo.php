<?php
    include_once("Publicacion.php");
    class Articulo extends Publicacion{
        private $isbn;
        private $noPag;

        public function __construct(){
            $this->isbn = "";
            $this->noPag = 0;
        }
        
        public function setIsbn($isbn){$this->isbn = $isbn;}
        public function getIsbn(){return $this->isbn;}

        public function setNoPag($noPag){$this->noPag = $noPag;}
        public function getNoPag(){return ->noPag;}
        
    }
?>