<?php
    class Conferencia{
        private $id;
        private $titulo;
        private $Evento;
        private $Lugar;
        private $Fecha;

        public function __construct(){
            $this->id = "";
            $this->titulo = "";
            $this->Evento = "";
            $this->Lugar = "";
            $this->Fecha = "";
        }

        public function setId($id){$this->id = $id;}
        public function getId(){return ->id;}

        public function setTitulo($titulo){$this->titulo = $titulo;}
        public function getTitulo(){return ->titulo;}

        public function setEvento($evento){$this->evento = $evento;}
        public function getEvento(){return ->evento;}

        public function setLugar($lugar){$this->lugar = $lugar;}
        public function getLugar(){return ->lugar;}
        
        public function setFecha($fecha){$this->fecha = $fecha;}
        public function getFecha(){return ->fecha;}
        
    }
?>