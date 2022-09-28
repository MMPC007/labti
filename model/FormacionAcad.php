<?php
    class FormacionAcad{
        private $id;
        private $grado;
        private $areaEspecialidad;
        private $institucion;
        private $fechaInicio;
        private $fechaFin;

        public function __construct(){
            $this->id = "";
            $this->grado = "";
            $this->areaEspecialidad = "";
            $this->institucion = "";
            $this->fechaInicio = "";
            $this->fechaFin = "";
        }

        public function setId($id){$this->id = $id;}
        public function getId(){return ->id;}

        public function setGrado($grado){$this->grado = $grado;}
        public function getGrado(){return ->grado;}

        public function setAreaEspecialidad($areaEspecialidad){$this->areaEspecialidad = $areaEspecialidad;}
        public function getAreaEspecialidad(){return ->areaEspecialidad;}

        public function setInstitucion($institucion){$this->institucion = $institucion;}
        public function getInstitucion(){return ->institucion;}

        public function setFechaInicio($fechaInicio){$this->fechaInicio = $fechaInicio;}
        public function getFechaInicio(){return ->fechaInicio;}

        public function setFechaFin($fechaFin){$this->fechaFin = $fechaFin;}
        public function getFechaFin(){return ->fechaFin;}
        
    }
?>