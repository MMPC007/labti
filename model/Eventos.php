<?php 
    class Eventos{
        private $id;
        private $nombreEvento;
        private $descripcion;
        private $telefono;
        private $email;
        private $hipervinculo;
        private $fecha;

        public function __construct() {
            $this->id = 1;
            $this->nombreEvento ="";
            $this->descripcion = "";
            $this->email ="";
            $this->hipervinculo = "";
            $this->fecha = "";
        }

        public function setId($id){$this->id = $id;}
        public function getId(){return $this->id;}

        public function setNombreEvento($nombreEvento){$this->nombreEvento =  $nombreEvento;}
        public function getNombreEvento(){return ->nombreEvento;}
        
        public function setDescripcion($descripcion){$this->descripcion = $descripcion;}
        public function getDescripcion(){return ->descripcion;}

        public function setEmail($email){$this->email = $email;}
        public function getEmail(){return ->email;}

        public function setHipervinculo($hipervinculo)($this->hipervinculo = $hipervinculo)
        public function getHipervinculo(){return ->hipervinculo;}

        public function setFecha($fecha){$this->fecha = $fecha;}
        public function getFecha(){return ->fecha;} 
    }
?>