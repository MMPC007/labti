<?php
    class DistincionAcademica{
        private $id;
        private $distincion;
        private $institucion;
        private $fechaInicio;
        private $fechaFin;

        public function __construct(){
            $this->id = "";
            $this->distincion = "";
            $this->institucion = "";
            $this->fechaInicio = "";
            $this->fechaFin = "";
        }

        public function setId($id){$this->id = $id;}
        public function getId(){return ->id;}

        public function setDistincion($distincion){$this->distincion = $distincion;}
        public function getDistincion(){return ->distincion;}

        public function setInstitucion($institucion){$this->institucion = $institucion;}
        public function getInstitucion(){return ->institucion;}

        public function setFechaInicio($fechaInicio){$this->fechaInicio = $fechaInicio;}
        public function getFechaInicio(){return ->fechaInicio;}

        public function setFechaFin($fechaFin){$this->fechaFin = $fechaFin;}
        public function getFechaFin(){return ->fechaFin;}

    }
?>