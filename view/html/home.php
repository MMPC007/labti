<?php
    include("model/BaseDatos.php");
    include("model/Laboratorio.php");

    $bd = new BaseDatos();
    $laboratorio = $bd->datos_lab();

?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio</title>

    <!-- Bootstrap -->
    <?php include("bootstrap_v5.php"); ?>

    <!-- Para el menu -->
    <script src="view/js/desplegar_menu.js"></script>

    <!--Iconos-->
    <link rel="shortcut icon" href="view/img/icono_lic_info.png">

    <!-- CSS -->
    <link href="view/css/style.css" rel="stylesheet" type="text/css">

</head>
<body>
    <div class="container">
        <?php include("menu_nav.php"); ?>
    </div>

    <main>
        <!-- Espacio -->
        <div class="container">
            <br>
            <?php
            ?>
        </div>

        <!-- Carousel -->
        <div class="container">
            <div id="carousel_labti" class="carousel slide pointer-event" data-bs-ride="carousel">
                
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carousel_labti" data-bs-slide-to="0" class="active" aria-label="Slide 1" aria-current="true"></button>
                    <button type="button" data-bs-target="#carousel_labti" data-bs-slide-to="1" class="" aria-label="Slide 2" ></button>
                    <button type="button" data-bs-target="#carousel_labti" data-bs-slide-to="2" class="" aria-label="Slide 3"></button>
                    <button type="button" data-bs-target="#carousel_labti" data-bs-slide-to="3" class="" aria-label="Slide 4"></button>
                    <button type="button" data-bs-target="#carousel_labti" data-bs-slide-to="4" class="" aria-label="Slide 5"></button>
                </div>

                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="view/img/Diapositiva1.png" class="d-block w-100" alt="...">

                        <div class="container">  <!-- checar -->
                            <div class="carousel-caption text-end">  <!-- v1 text-start || vacio centra ||text-end -->  <!-- v2 d-none d-md-block  -->
                                <h1>Sistemas inteligentes y distribuidos </h1>  <!-- h5 checar -->
                                <p>Some representative placeholder content for the first slide of the carousel.</p>
                                <p><a class="btn btn-lg btn-primary" href="#">Sign up today</a></p>  <!-- checar -->
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="view/img/Diapositiva2.png" class="d-block w-100" alt="...">

                        <div class="container">  <!-- checar -->
                            <div class="carousel-caption  text-end">  <!-- v1 text-start || vacio centra ||text-end -->  <!-- v2 d-none d-md-block  -->
                                <h1>Electronica.</h1>  <!-- h5 checar -->
                                <p>Some representative placeholder content for the first slide of the carousel.</p>
                                <p><a class="btn btn-lg btn-primary" href="#">Sign up today</a></p>  <!-- checar -->
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="view/img/Diapositiva3.png" class="d-block w-100" alt="...">

                        <div class="container">  <!-- checar -->
                            <div class="carousel-caption text-end">  <!-- v1 text-start || vacio centra ||text-end -->  <!-- v2 d-none d-md-block  -->
                                <h1>Investigación y desarrollo de software.</h1>  <!-- h5 checar -->
                                <p>Some representative placeholder content for the first slide of the carousel.</p>
                                <p><a class="btn btn-lg btn-primary" href="#">Sign up today</a></p>  <!-- checar -->
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="view/img/Diapositiva3.png" class="d-block w-100" alt="...">

                        <div class="container">  <!-- checar -->
                            <div class="carousel-caption text-end">  <!-- v1 text-start || vacio centra ||text-end -->  <!-- v2 d-none d-md-block  -->
                                <h1>Experiencia de usuario UX.</h1>  <!-- h5 checar -->
                                <p>Some representative placeholder content for the first slide of the carousel.</p>
                                <p><a class="btn btn-lg btn-primary" href="#">Sign up today</a></p>  <!-- checar -->
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="view/img/Diapositiva3.png" class="d-block w-100" alt="...">

                        <div class="container">  <!-- checar -->
                            <div class="carousel-caption text-end">  <!-- v1 text-start || vacio centra ||text-end -->  <!-- v2 d-none d-md-block  -->
                                <h1>Redes.</h1>  <!-- h5 checar -->
                                <p>Some representative placeholder content for the first slide of the carousel.</p>
                                <p><a class="btn btn-lg btn-primary" href="#">Sign up today</a></p>  <!-- checar -->
                            </div>
                        </div>
                    </div>

                </div>


                <button class="carousel-control-prev" type="button" data-bs-target="#carousel_labti" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
                </button>
                
                <button class="carousel-control-next" type="button" data-bs-target="#carousel_labti" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>

        <!-- Espacio -->
        <div class="container">
            <div class="mt-5"></div>
        </div>

        <!-- ¿Que es LabTI? -->
        <div class="container" id="id_queeslabti">
            <h2>¿Que es LabTI?</h2>
            <?php
                printf('<p>%s</p>', $laboratorio->getDefinicion());
            ?>
        </div>

        <!-- Espacio -->
        <div class="container">
            <div class="mt-5"></div>
        </div>
        
        <!-- Video -->
        <div class="container">
           <div class="ratio ratio-16x9">
                <iframe class="embed-responsive-item" src="https://www.facebook.com/plugins/video.php?height=314&href=https%3A%2F%2Fwww.facebook.com%2FInformaticaUNCA%2Fvideos%2F582433396653906%2F&show_text=false&width=560&t=0" width="560" height="314" style="border:none;overflow:hidden" allowfullscreen></iframe>
            </div>
        </div>

        <!-- Espacio -->
        <div class="container">
            <br>
        </div>

        <!-- Misión -->
        <div id="id_mision" class="container">
            <h2>Misión</h2>
            <?php
                printf('<p>%s</p>', $laboratorio->getMision());
            ?>
        </div>

        <!-- Espacio -->
        <div class="container">
            <br>
        </div>

        <!-- Vision -->
        <div id="id_vision" class="container">
            <h2>Visión</h2>
            <?php
                printf('<p>%s</p>', $laboratorio->getVision());
            ?>
        </div>

        <!-- Espacio -->
        <div class="container">
            <br>
        </div>

        <!-- Video -->
        <div class="container">
           <div class="ratio ratio-16x9">
                <iframe class="embed-responsive-item" src="https://www.facebook.com/plugins/video.php?height=314&href=https%3A%2F%2Fwww.facebook.com%2FInformaticaUNCA%2Fvideos%2F582433396653906%2F&show_text=false&width=560&t=0" width="560" height="314" style="border:none;overflow:hidden" allowfullscreen></iframe>
            </div>
        </div>

        
        
    </main>
    <?php include("footer.php"); ?>
</body>
</html>