<?php 
    class Usuario{
        private $id;
        private $nombre;
        private $contraseña;

        public function __construct(){
            $this->id = 0 ;
            $this->nombre = "";
            $this->contraseña = "";
        }

        public function setId($id){$this->id = $id;}
        public function getId(){return $this->id;}

        public function setNombre($nombre){$this->nombre = $nombre;}
        public function getNombre(){return $this->nombre;}

        public function setContraseña($contraseña){$this->contraseña = $contraseña;}
        public function getContraseña(){return $this->contraseña;}
    }
?>