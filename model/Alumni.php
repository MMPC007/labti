<?php
    require_once("Usuario.php");
    private $gradoActual;

    public function __construct(){
        $this->gradoActual = "";
    }
    
    public function setGradoActual($gradoActual) {$this->gradoActual = $gradoActual;}
    public function getGradoActual(){return $this->gradoActual;}

?>