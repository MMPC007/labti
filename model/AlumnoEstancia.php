<?php
    require_once("Usuario.php");
    class AlumnoEstancia extends Usuario{
        private $semestre;
        private $carrera;
        private $institucion;

        public function __construct(){
            $this->semestre = "";
            $this->carrera = "";
            $this->institucion = "";
        }

        public function setSemestre($semestre){$this->semestre = $semestre;}
        public function getSemestre(){return $this->semestre;}

        public function setCarrera($carrera){$this->carrera = $carrera;}
        public function getCarrera(){return $this->carrera;}

        public function setInstitucion($institucion){$this->institucion = $institucion;}
        public function getInstitucion(){return $this->institucion;}

    }
?>