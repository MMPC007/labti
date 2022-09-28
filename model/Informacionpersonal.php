<?php 
    class Informacionpersonal{
        private $id;
        private $nombre;
        private $apellido;
        private $fotografia;
        private $telefono;
        private $email;

        public function __construct(){
            $this->id = 0;
            $this->nombre = "";
            $this->apellido = "";
            $this->fotografia = "";
            $this->telefono = "";
            $this->email = "";

        }

        public function setId($id){$this->id = $id;}
        public function getId(){return $this->id;}

        public function setNombre($nombre){$this->nombre = $nombre;}
        public function getNombre(){return $this->nombre;}

        public function setApellido($apellido){$this->apellido = $apellido;}
        public function getApellido(){return $this->apellido;}

        public function setFotografia($fotografia){$this->fotografia = $fotografia;}
        public function getFotografia(){return $this->fotografia;}

        public function setTelefono($telefono){$this->telefono = $telefono;}
        public function getTelefono(){return $this->telefono;}

        public function setEmail($email){$this->email = $email;}
        public function getEmail(){return $this->email;}
    }
?>