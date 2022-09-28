<?php
    require_once("Usuario.php");
    class ColaboradorExterno extends Usuario {
        private $gradoActual;
        private $institucionProcedencia;

        public function __construct(){
            $this->gradoActual = "";
            $this->institucionProcedencia = "";
        }
        
        public function setGradoActual($gradoActual) {$this->gradoActual = $gradoActual;}
        public function getGradoActual(){return $this->gradoActual;}

        public function setInstitucionProcedencia($institucionProcedencia){$this->institucionProcedencia = $institucionProcedencia;}
        public function getInstitucionProcedencia(){return ->institucionProcedencia;}
    }
?>