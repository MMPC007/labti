<?php
    require_once("Usuario.php");
    class AlumnoTesista extends Usuario{
        private $estado;
        private $carrera;
        private $tesis;

        public function __construct(){
            $this->estado = "";
            $this->carrera = "";
            $this->tesis = "";
        }

        public function setEstado($estado){$this->estado = $estado;}
        public function getEstado(){return $this->estado;}

        public function setCarrera($carrera){$this->carrera = $carrera}
        public function getCarrera(){return $this->carrera;}

        public function setTesis($tesis){$this->tesis = $tesis;}
        public function getTesis(){return $this->tesis;}
    }

?>