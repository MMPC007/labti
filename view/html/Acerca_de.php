<?php
    include("..//..//model/BaseDatos.php");
    include("..//..//model/Laboratorio.php");

    $bd = new BaseDatos();
    $laboratorio = $bd->datos_lab();

?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Acerca de</title>

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

        <!-- Información de contacto -->
        <div id="id_contactenos" class="container">
            <h2>Información de contacto</h2>
            <br>
            <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-4">
                            <h5>Teléfono</h5>
                            <?php
                                printf('<p>%s</p>', $laboratorio->getTelefono());
                            ?>
                        </div>
                        <div class="col-4">
                            <h5>Correo</h5>
                            <?php
                                printf('<p>%s</p>', $laboratorio->getEmail());
                            ?>
                        </div>
                        <div class="col-4">
                            <h5>Dirección</h5>
                            <?php
                                printf('<p>%s</p>', $laboratorio->getDireccion());
                            ?>
                        </div>
                    </div>
            </div>
        </div>

        <!-- Espacio -->
        <div class="container">
            <br>
        </div>
        
        <!-- Mapa -->
        <div id="lab_ubic" class="container">
            <h2>Ubicación</h2>
            <br>
            <div class="ratio ratio-16x9">
                <iframe src="https://www.google.com/maps/embed?pb=!4v1663875153084!6m8!1m7!1sw5TiNt1fY9mSNBinB1_XEA!2m2!1d18.13510447379684!2d-97.09705874914933!3f71.45409423395809!4f-26.282944461073562!5f1.1924812503605782" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>

        
    </main>

    <?php include("Footer.php"); ?>
</body>
</html>