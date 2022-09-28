<?php
    include("..//..//model/BaseDatos.php");
    include("..//..//model/Informacionpersonal.php");
    include("..//..//model/Multimedia.php");

    $miembro = $_GET["miembro"];
    $bd = new BaseDatos();
    if($miembro == 1){ 
        $list_inf = $bd->lista_pfi();
        $nmiembro = "Profesores Investigadores";
     } /* profesores investigadores */
    if($miembro == 2){ 
        $list_inf = $bd->lista_colab(); 
        $nmiembro = "Colaboradores externos";
    } /* colaboradores */
    if($miembro == 3){ 
        $list_inf = $bd->lista_serv();
        $nmiembro = "Servicio Social";
    } /* servicio social */
    if($miembro == 4){ 
        $list_inf = $bd->lista_estp();
        $nmiembro = "Estancias profesionales"; 
    } /* Estancias profesionales */
    if($miembro == 5){ 
        $list_inf = $bd->lista_egres();
        $nmiembro = "Alumni-Egresados";
    } /* egresados */
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php printf("<title>%s</title>",$nmiembro)?> 

    <!-- Bootstrap -->
    <?php include("bootstrap_v5.php"); ?> 

    <!-- Para el menu -->
    <!-- <script src="view/js/desplegar_menu.js"></script> -->

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

        <!-- Titulo de la pagina  -->
        <div  class="container">
            <div class="row justify-content-start g-0">
                <div class="col-2 align-self-start">
                    <img src="..//img/ProfesorInvestigador.png"  class="col-md-6 mb-3 ms-md-3" alt="...">
                </div>
                <div class="col-6 align-self-center">
                <?php printf("<h1>%s</h1>",$nmiembro)?>
                </div>
            </div>
        </div>

        <!-- Espacio -->
        <div class="container">
            <br>
        </div>
 
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
                            printf('<a href="/LabTI/view/html/curriculum.php?user=%s" class="card-link">Ver C.V.</a>',$Inf->getEmail());
            printf('</div>
            </div>
        </div>
    </div>
</div>');
        }
?>
            </div>
        </div>

        <!-- Espacio -->
        <div class="container">
            <br>
            <br>

        </div>
    </main>

    <?php include("footer.php"); ?>
</body>
</html>