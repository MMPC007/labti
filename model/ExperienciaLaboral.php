<?php
    class ExperienciaLaboral{
        private $id;
        private $puesto;
        private $institucion;
        private $fechaInicio;
        private $fechaFin;

        public function __construct(){
            $this->id = -1;
            $this->puesto = "";
            $this->institucion = "";
            $this->fechaInicio = "000-00-00";
            $this->fechaFin = "000-00-00";
        }

        public function setId($id){$this->id = $id;}
        public function getId(){return $this->id;}

        public function setPuesto($puesto){$this->puesto = $puesto;}
        public function getPuesto(){return $this->puesto;}

        public function setInstitucion($institucion){$this->institucion = $institucion;}
        public function getInstitucion(){return $this->institucion;}

        public function setFechaInicio($fechaInicio){$this->fechaInicio = $fechaInicio;}
        public function getFechaInicio(){return $this->fechaInicio;}

        public function setFechaFin($fechaFin){$this->fechaFin = $fechaFin;}
        public function getFechaFin(){return $this->fechaFin;}
    }

?>