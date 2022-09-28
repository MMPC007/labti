<?php
    include("..//..//model/BaseDatos.php");
    include("..//..//model/Informacionpersonal.php");
    include("..//..//model/Multimedia.php");
    include("..//..//model/Area.php");
    
    $area=$_GET["area"];

    $bd = new BaseDatos();
    $list_inf = $bd->lista_areas($area);
    $areaLab = $bd->info_area($area);

?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        <?php  printf('%s', $areaLab->getNombre()) ?>
    </title>

    <!-- Bootstrap -->
    <?php include("bootstrap_v5.php"); ?>

    <!--Iconos-->
    <link rel="shortcut icon" href="..//img/icono_lic_info.png">

</head>
<body>
    <div class="container">
        <?php include("menu_nav.php"); ?>
    </div>

    <main>
        <!-- Espacio -->
        <div class="container">
            <br>
        </div>

        <!-- Titulo  del Area del laboratorio -->
        <div class="container">
        <div class="row justify-content-start g-0">
                <div class="col-2 align-self-start">
                    <!-- <img src="..//img/ProfesorInvestigador.png"  class="col-md-6 mb-3 ms-md-3" alt="..."> -->
                </div>
                <div class="col-8 align-self-center">
                    <?php
                        printf('<h1>%s - %s</h1>', $areaLab->getNombre(), $areaLab->getAcronimo())
                    ?>
                </div>
            </div>
        </div>
        
        <!-- Espacio -->
        <div class="container">
            <br>
        </div>

        <!-- Objetivo del del laboratorio -->
        <div class="container">
            <h3>Objetivo del laboratorio</h3>
            <br>
            <?php
                printf('<p> %s </p>', $areaLab->getObjetivo());
            ?>
        </div>

         <!-- Espacio -->
         <div class="container">
            <br>
        </div>

        <!-- Miembros del laboratorio -->
        <div class="container">
            <h3>Profesores investigadores-Miembros</h3>
            <br>
            <br>
                    <!-- Lista de Profesores investigadores -->
        <div class = container>
            <div class="row row-cols-1 row-cols-md-2 g-4">
<?php
    foreach($list_inf as $Inf){

        $idimg = $Inf->getFotografia();
        $fotografia = $bd->img_pfi($idimg);
        
        printf('<div class="col">
                    <div class="card mb-3" style="max-width: 540px;">
                        <div class="row g-0">
                            <div class="col-md-4">');
                        printf('<img src="/LabTI/Users/%s/Perfil/%s" class="card-img-top" alt="...">', $Inf->getEmail(),$fotografia->getNombreArchivo());
                        printf('</div>
                                    <div class="col-md-8 align-self-center">
                                        <div class="card-body">');
                                    printf('<h3 class="card-title"> %s %s</h4>',$Inf->getNombre(),$Inf->getApellido());
                                    /* print('<h6 class="card-subtitle mb-2 text-muted">Maestra en Ciencias Computacionales</h6>'); */
                            printf('<a href="/LabTI/view/html/Curriculum.php?user=%s" class="card-link">Ver C.V.</a>',$Inf->getEmail());
            printf('</div>
            </div>
        </div>
    </div>
</div>');
        }
?>
            </div>
        </div>

        </div>

        <!-- Espacio -->
        <div class="container">
            <br>
        </div>

        <!-- Espacio -->
        <div class="container">
            <br>
        </div>
        
        <!-- Proyectos del laboratorio-->
        <div class="container">
            <h3>Proyectos</h3>
            <br>
        </div>
    </main>

    <?php include("footer.php"); ?>
</body>
</html>