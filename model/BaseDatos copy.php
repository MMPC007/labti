<?php
 class BaseDatos {
    private $sql;

    public function __construct(){
        $this->sql = new mysqli("localhost", "root", "","labti2");
        $this->sql->set_charset("utf8");
        if($this->sql->errno){
            echo "Error en la conexión";
        }
    }

    public function datos_lab(){
        $consulta="SELECT Nombre,Email,Teléfono,Dirección,Misión,Visión,Definición FROM laboratorio WHERE Id=1;";
        $resultado = $this->sql->query($consulta);
        if($resultado){
            $DLaboratorio = new Laboratorio;
            while($registro = $resultado->fetch_assoc()){
                $DLaboratorio->setNombre($registro['Nombre']);
                $DLaboratorio->setEmail($registro['Email']);
                $DLaboratorio->setTelefono($registro['Teléfono']);
                $DLaboratorio->setDireccion($registro['Dirección']);
                $DLaboratorio->setMision($registro['Misión']);
                $DLaboratorio->setVision($registro['Visión']);
                $DLaboratorio->setDefinicion($registro['Definición']);
            }
            $resultado->close();
            return $DLaboratorio;
        }else{
            $resultado->close();
        }
    }

    /* Obtene la lista de profesores investigadores */
    public function lista_pfi(){
        $list_infpfi=array();
        $consulta ="SELECT Id,Nombre,Apellido,Imagen,Email  FROM información_personal, profesor_investigador WHERE información_personal.id_usuario=profesor_investigador.Id_usuario ;";
        $resultado = $this->sql->query($consulta);
        if($resultado){
            while($registro = $resultado->fetch_assoc()){
                $Infpf = new Informacionpersonal;
                $Infpf->setId($registro['Id']);
                $Infpf->setNombre($registro['Nombre']);
                $Infpf->setApellido($registro['Apellido']);
                $Infpf->setFotografia($registro['Imagen']);
                $Infpf->setEmail($registro['Email']);

                array_push($list_infpfi, $Infpf);
            }
            return $list_infpfi;
        }else{
            $resultado->close();
        }

    }
    
    /* Obtiene la lista de colaboradores externos */
    public function lista_colab(){
        $list_inf=array();
        $consulta ="SELECT Id,Nombre,Apellido,Imagen,Email FROM información_personal, colaborador_externo WHERE información_personal.id_usuario=colaborador_externo.Id_usuario;";
        $resultado = $this->sql->query($consulta);
        if($resultado){
            while($registro = $resultado->fetch_assoc()){
                $Infpf = new Informacionpersonal;
                $Infpf->setId($registro['Id']);
                $Infpf->setNombre($registro['Nombre']);
                $Infpf->setApellido($registro['Apellido']);
                $Infpf->setFotografia($registro['Imagen']);
                $Infpf->setEmail($registro['Email']);

                array_push($list_inf, $Infpf);
            }
            return $list_inf;
        }else{
            $resultado->close();
        }
    }

    /* Obtiene la lista de alumnos en servicio social */
    public function lista_serv(){
        $list_inf=array();
        $consulta ="SELECT Id,Nombre,Apellido,Imagen,Email FROM información_personal, alumno_servicio_social WHERE información_personal.id_usuario=alumno_servicio_social.Id_usuario;";
        $resultado = $this->sql->query($consulta);
        if($resultado){
            while($registro = $resultado->fetch_assoc()){
                $Inf = new Informacionpersonal;
                $Inf->setId($registro['Id']);
                $Inf->setNombre($registro['Nombre']);
                $Inf->setApellido($registro['Apellido']);
                $Inf->setFotografia($registro['Imagen']);
                $Inf->setEmail($registro['Email']);

                array_push($list_inf, $Inf);
            }
            return $list_inf;
        }else{
            $resultado->close();
        }

    }

    /* Lista de alumnos ene estancias profesionales */
    public function lista_estp(){
        $list_inf=array();
        $consulta ="SELECT Id,Nombre,Apellido,Imagen,Email FROM información_personal, alumno_estancia_profesional WHERE información_personal.id_usuario=alumno_estancia_profesional.Id_usuario;";
        $resultado = $this->sql->query($consulta);
        if($resultado){
            while($registro = $resultado->fetch_assoc()){
                $Inf = new Informacionpersonal;
                $Inf->setId($registro['Id']);
                $Inf->setNombre($registro['Nombre']);
                $Inf->setApellido($registro['Apellido']);
                $Inf->setFotografia($registro['Imagen']);
                $Inf->setEmail($registro['Email']);

                array_push($list_inf, $Inf);
            }
            return $list_inf;
        }else{
            $resultado->close();
        }

    }


    public function lista_egres(){
        $list_inf=array();
        $consulta ="SELECT Id,Nombre,Apellido,Imagen,Email FROM información_personal, alumni WHERE información_personal.id_usuario=alumni.Id_usuario;";
        $resultado = $this->sql->query($consulta);
        if($resultado){
            while($registro = $resultado->fetch_assoc()){
                $Inf = new Informacionpersonal;
                $Inf->setId($registro['Id']);
                $Inf->setNombre($registro['Nombre']);
                $Inf->setApellido($registro['Apellido']);
                $Inf->setFotografia($registro['Imagen']);
                $Inf->setEmail($registro['Email']);

                array_push($list_inf, $Inf);
            }
            return $list_inf;
        }else{
            $resultado->close();
        }

    }

    public function lista_areas($area){
        $list_inf=array();
        $consulta ="SELECT información_personal.Id, información_personal.Nombre ,información_personal.Apellido, información_personal.Imagen, información_personal.Email FROM información_personal, profesor_investigador_área WHERE profesor_investigador_área.Id_área_laboratorio =$area and profesor_investigador_área.Id_profesor_investigador=información_personal.Id_usuario;";
        $resultado = $this->sql->query($consulta);
        if($resultado){
            while($registro = $resultado->fetch_assoc()){
                $Inf = new Informacionpersonal;
                $Inf->setId($registro['Id']);
                $Inf->setNombre($registro['Nombre']);
                $Inf->setApellido($registro['Apellido']);
                $Inf->setFotografia($registro['Imagen']);
                $Inf->setEmail($registro['Email']);

                array_push($list_inf, $Inf);
            }
            $resultado->close();
            return $list_inf;
        }else{
            $resultado->close();
        }

    }

    Public function info_area($area){
        $consulta ="SELECT Nombre, Acrónimo,Objetivo FROM `área` WHERE Id=$area;";
        $resultado = $this->sql->query($consulta);
        if($resultado){
            $areaLab = new Area;
            while($registro = $resultado->fetch_assoc()){
                $areaLab->setNombre($registro['Nombre']);
                $areaLab->setAcronimo($registro['Acrónimo']);
                $areaLab->setObjetivo($registro['Objetivo']);
            }
            $resultado->close();
            return $areaLab;
        }else{
            $resultado->close();
        }
    }

    public function img_pfi($idimg){
        $consulta ="SELECT Nombre_archivo FROM multimedia, información_personal WHERE multimedia.Id=$idimg;";
        $resultado = $this->sql->query($consulta);
        if($resultado){
            $fotografia = new Multimedia;
            while($registro = $resultado->fetch_assoc()){
                $fotografia->setNombreArchivo($registro['Nombre_archivo']);
            }
            $resultado->close();
            return $fotografia;
        }else{
            $resultado->close();
        }

    }

    public function info_personal($user){
        $valor=strval($user);
        $consulta ="SELECT Id, Nombre, Apellido, Imagen, Teléfono, Email FROM Información_personal WHERE Email=\"$valor\";";
        $resultado = $this->sql->query($consulta);
        if($resultado){
            $informacion = new Informacionpersonal;
            while($registro = $resultado->fetch_assoc()){
                $informacion->setId($registro['Id']);
                $informacion->setNombre($registro['Nombre']);
                $informacion->setApellido($registro['Apellido']);
                $informacion->setFotografia($registro['Imagen']);
                $informacion->setTelefono($registro['Teléfono']);
                $informacion->setEmail($registro['Email']);
            }
            
            $resultado->close();
            return $informacion;
        }else{
            $resultado->close();
        }
    }

    public function tabla_proyecto(){
        $listproyecto = array();
        $consulta = "SELECT proyecto.Id,proyecto.Nombre_proyecto,proyecto_estado.Estado FROM proyecto, proyecto_estado;";
        $resultado = $this->sql->query($consulta);
        if($resultado){
            while($registro = $resultado->fetch_assoc()){
                $proyecto = new Proyecto();
                $proyecto->setId($registro['Id']);
                $proyecto->setNombre($registro['Nombre_proyecto']);
                $proyecto->setStatus($registro['Estado']);

                array_push($listproyecto,$proyecto);
            }
            $resultado->close();
            return $listproyecto;
        }else{
            $resultado->close();
        }
    }
}
