<?php 
    require_once("Usuario.php");
    class ProfesorInvestigador extends Usuario{
        public $gradoActual;

        public function __construct(){
            $this->gradoActual = "";
        }

        public function setGradoActual($gradoActual){$this->gradoActual= $gradoActual;}
        public function getGradoActual(){ return $this->setGradoActual;}
    }
?>