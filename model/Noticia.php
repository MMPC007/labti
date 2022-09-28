<?php
    class Noticia{
        private $id;
        private $titulo;
        private $fecha;
        private $entrada;
        private $cuerpo;

        public function __construct(){
            $this->id = "";
            $this->titulo = "";
            $this->fecha = ""; 
            $this->entrada = "";
            $this->cuerpo = "";
        }

        public function setId($id){$this->id = $id;}
        public function getId(){return $this->id;}

        public function setTitulo($titulo){$this->titulo = $titulo;}
        public function getTitulo(){return ->titulo;}

        public function setFecha($fecha){$this->fecha = $fecha;}
        public function getFecha(){return ->fecha;}

        public function setEntrada($entrada){$this->entrada = $entrada;}
        public function getEntrada(){return ->entrada;}

        public function setCuerpo($cuerpo){$this->cuerpo = $cuerpo;}
        public function getCuerpo(){return ->cuerpo;}
        
    }
?>