<?php
    require_once("Usuario.php");
    class AlumnoServicio extends usuario{
        private $semestre;
        private $carrera;
        private $institucionProcedencia;

        public function __construct(){
            $this->semestre = "";
            $this->carrera = "";
            $this->institucionProcedencia = "";
        }

        public function setSemestre($semestre){$this->semestre = $semestre;}
        public function getSemestre(){return $this->semestre;}

        public function setCarrera($carrera){$this->carrera = $carrera}
        public function getCarrera(){return $this->carrera;}

        public function setInstitucionProcedencia($institucionProcedencia){$this->institucionProcedencia = $institucionProcedencia;}
        public function getInstitucionProcedencia(){return ->institucionProcedencia;}

    }
?>