<?php
    class Coautor{
        private $id;
        private $nombre;

        public function __construct(){
            $this->id  = 0;
            $this->nombre = "";
        }

        public function setId($id){$this->id = $id;}
        public function getId(){return $this->id;}

        Public function setNombre($nombre){$this->nombre = $nombre;}
        public function getNombre(){return $this->nombre;}
    }
?>