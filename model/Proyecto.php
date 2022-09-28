<?php 
    class Proyecto{
        private $id;
        private $status;
        private $nombre;
        private $problematica;
        private $solcpropuesta;
        private $objetivos;
        private $resultados;
        private $inftec;

        public function __construct() {
            $this->id="";
            $this->status="";
            $this->nombre="";
            $this->problematica="";
            $this->solcpropuesta="";
            $this->objetivos = "";
            $this->resultados="";
            $this->inftec="";
        }

        public function setId($id){$this->id = $id;}
        public function getId(){return $this->id;}

        public function setStatus($status){$this->status = $status;}
        public function getStatus(){return $this->status;}

        public function setNombre($nombre){$this->nombre = $nombre;}
        public function getNombre(){return $this->nombre;}
        
        public function setProblematica($problematica){$this->problematica = $problematica;}
        public function getProblematica(){return $this->problematica;}

        public function setSolcpropuesta($solcpropuesta){$this->solcpropuesta = $solcpropuesta;}
        public function getSolcpropuesta(){return $this->solcpropuesta;}

        public function setObjetivos($objetivos){$this->objetivos = $objetivos;}
        public function getObjetivos(){return $this-> objetivos;}

        public function setResultados($resultados){$this->resultados = $resultados;}
        public function getResultados(){return $this-> resultados;}  
        
        public function setInftec($inftec){$this->inftec = $inftec;}
        public function getInftec(){return $this-> inftec;}
        
    }
?>