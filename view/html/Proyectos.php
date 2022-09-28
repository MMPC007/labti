<?php
   include("..//..//model/BaseDatos.php");
    include("..//..//model/Informacionpersonal.php");
    include("..//..//model/Multimedia.php");
    include("..//..//model/Area.php");
    include("..//..//model/Proyecto.php"); 
    
    $bd = new BaseDatos();

    $listproyectos = $bd->tabla_proyecto();

?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyectos</title>

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

    <!-- tabla de actividades -->
    <div class="row-flex">
        <div class="container">
            <div class="col-lg-12">    
                <table id="tablaproyectos" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <th>Id</th>
                        <th>Proyecto</th>
                        <th>Estatus</th>
                        <!-- <th>Director</th> -->
                    </thead>
                    <tbody>
                        <?php
                            foreach ($listproyectos as $proyecto) {
                                printf('<tr>');
                                    printf('<td>%d</td>',$proyecto->getId());
                                    printf('<td>%s</td>',$proyecto->getNombre());
                                    printf('<td>%s</td>',$proyecto->getStatus());
                                printf('</tr>');
                            }

                        ?>
                    </tbody>
                </table>
                <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.js"></script>
                <script src="..//js/tablaproyecto.js"></script>
            </div>
        </div>
    </div>    

    </main>

    <?php include("Footer.php"); ?>
</body>
</html>