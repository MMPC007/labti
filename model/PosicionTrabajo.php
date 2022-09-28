<?php 
    class PosicionTrabajo{
        private $id;
        private $puesto;
        private $institucion;

        public function __construct(){
            $this->id = -1;
            $this->puesto = "";
            $this->institucion = "";
        }

        public function setId($id){$this->id = $id;}
        public function getId(){return $this->id;}

        public function setPuesto($puesto){$this->puesto = $puesto;}
        public function getPuesto(){return $this->puesto;}

        public function setInstitucion($institucion){$this->institucion = $institucion;}
        public function getInstitucion(){return $this->institucion;}

    }

?>