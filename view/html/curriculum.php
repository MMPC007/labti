<?php
    include("..//..//model/BaseDatos.php");
    include("..//..//model/Informacionpersonal.php");
    include("..//..//model/Multimedia.php");
    include("..//..//model/Area.php");

    $user=strval($_GET["user"]);

    $bd = new BaseDatos();
    
    $infopersonal = $bd->info_personal($user);

    $idimg = $infopersonal->getFotografia();
    $fotografia = $bd->img_pfi($idimg);

?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curriculum</title>

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

        <!-- Información personal-->
        <div class="container">
            <div class="row align-items-center">
                <div class="col-3 align-self-start">
                    <?php
                        printf('<img src="../../Users/%s/Perfil/%s" class="" alt="...">', $infopersonal->getEmail(),$fotografia->getNombreArchivo());
                    ?>
                </div>
                <div class="col-9 align-self-start">
                    <?php
                        printf('<h2> Dr. %s %s</h2>',$infopersonal->getNombre(),$infopersonal->getApellido());
                    ?>
                    <div class="row">
                        <?php
                            printf('<h6>Email: %s </h6>', $infopersonal->getEmail());
                        ?>
                    </div>
                    <div class="row">
                        <?php
                            printf('<h6>Teléfono: %s </h6>', $infopersonal->getTelefono());
                        ?>
                    </div>
                    
                    <div class="row">
                        <?php

                        ?>
                    </div>
                </div>
            </div>
        </div>

        <!-- Espacio -->
        <div class="container">
            <br>
        </div>
        
        <!-- Información del CV -->
        <div class="container">

            <nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">Experiencia Laboral</button>
                    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Formación académicas</button>
                    <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">Distinciones académicas</button>
                    <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">Publicaciones</button>
                    <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">Conferencias</button>
                </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">

                <!-- Experiencia laboral -->
                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">

                </div>
                
                <!-- Formación académica -->
                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">

                </div>
                
                <!-- Distinciones académicas -->
                <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">

                </div>

                <!-- Publicaciones -->
                <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">

                </div>
                
                <!-- Conferencias -->
                <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">

                </div>
                
            </div>


        </div>
    </main>

    <?php include("Footer.php"); ?>
</body>
</html>