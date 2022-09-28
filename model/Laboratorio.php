<?php
    class Laboratorio{
        private $id;
        private $nombre;
        private $email;
        private $telefono;
        private $direccion;
        private $mision;
        private $vision;
        private $definicion;

        public function __construct(){
            $this->id = 0;
            $this->nombre = "";
            $this->email = "";
            $this->telefono = "";
            $this->direccion = "";
            $this->mision = "";
            $this->vision = "";
            $this->definicion = "";
        }

        public function setId($id){$this->id = $id;}
        public function getId(){return $this->id;}

        public function setNombre($nombre){$this->nombre = $nombre;}
        public function getNombre(){return $this->nombre;}

        public function setEmail($email){$this->email = $email;}
        public function getEmail(){return $this->email;}

        public function setTelefono($telefono){$this->telefono = $telefono;}
        public function getTelefono(){return $this->telefono;}

        public function setDireccion($direccion){$this->direccion = $direccion;}
        public function getDireccion(){return $this->direccion;}

        public function setMision($mision){$this->mision = $mision;}
        public function getMision(){return $this->mision;}

        public function setVision($vision){$this->vision = $vision;}
        public function getVision(){return $this->vision;}

        public function setDefinicion($definicion){$this->definicion = $definicion;}
        public function getDefinicion(){return  $this->definicion;}
    }
?>