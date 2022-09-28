<?php
    class Eventohistorico{
        private $id;
        private $nombreHistoria;
        private $descripcion;
        private $fecha;

        public function __construct(){
            $this->id = 0;
            $this->nombreHistoria = "";
            $this->descripcion = "";
            $this->fecha = "";
        }

        public function setId($id){$this->id = $id;}
        public function get(){return $this->id;}

        public function setNombreHistoria($nombreHistoria){$this->nombreHistoria = $nombreHistoria;}
        public function getNombreHistoria(){return $this->nombreHistoria;}

        public function setDescripcion($descripcion){$this->descripcion = $descripcion;}
        public function getDescripcion(){return $this->descripcion;}

        public function setFecha($fecha){$this->fecha = $fecha;}
        public function getFecha(){return $this->fecha;}
    }
?>