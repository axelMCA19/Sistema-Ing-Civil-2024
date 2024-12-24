<?php
session_start();
if (!isset($_SESSION['usuario_id'])) {
    header('Location:../login/login_universitarios/login_universitarios.html');
    exit();
}
?>



<!DOCTYPE html>
<html lang="en">
<head>
	<!-- set the encoding of your site -->
	<meta charset="utf-8">
	<!-- set the viewport width and initial-scale on mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- set the apple mobile web app capable -->
	<meta name="apple-mobile-web-app-capable" content="yes">
	<!-- set the HandheldFriendly -->
	<meta name="HandheldFriendly" content="True">
	<!-- set the apple mobile web app status bar style -->
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<!-- set the description -->
	<meta name="description" content="App Landing Page">
	<!-- set the Keyword -->
	<meta name="keywords" content="app, app landing, clean, landing, landing page, marketing, marketing landing, product, product landing, responsive, seo, startup landing ">
	<meta name="author" content="Vue Laboratories">
	<title>App Landing Page</title>
	<!-- include the site stylesheet -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i%7COswald:400,700" rel="stylesheet">
	<!-- include the site stylesheet -->
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<!-- include the site stylesheet -->
	<link rel="stylesheet" href="../../css/plugins.css">
	<!-- include the site stylesheet -->
	<link rel="stylesheet" href="../../css/font-awesome.min.css">
	<!-- include the site stylesheet -->
	<link rel="stylesheet" href="css/style.css">
	<!-- include the site stylesheet -->
	<link rel="stylesheet" href="../../css/colors.css">
	<!-- include the site stylesheet -->
	<link rel="stylesheet" href="../../css/responsive.css">
	<!-- include the site stylesheet -->
	<link rel="stylesheet" href="../../css/gridgum.css">
	<style class="color_css"></style>
</head>
<body>
	<!-- Wrapper of the page -->
	<div id="wrapper">
		<!-- Header of the page -->
		<header id="header">
			<div class="container">
				<div class="holder center-block">
					<!-- Logo of the page -->
					<div class="logo">
						<a href="#">
							<img src="../../images/logo.svg" alt="Mono" class="light img-responsive width">
							<img src="../../images/logo-dark.svg" alt="mono" class="dark img-responsive width">
						</a>
					</div>
					<!-- Logo of the page end -->
					<!-- Navbar of the page -->
					<nav class="navbar navbar-default">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<a href="../cerrar.php" class="btn btn-default btn-white">Cerrar secion</a>
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav navbar-right">
								<!-- <li><a href="#">Credencial de universitario</a></li> -->
								<li><a href="programar_examen/programar_examen.php">programar examen</a></li>
								<li><a href="documentacion/documentacion.php">Documentación</a></li>
								<li><a href="documentacion_docentes/documentos_practicas/index.php">Agregar Practicas</a></li>
								<li><a href="documentacion_docentes/revisar_practicas/index.php">Revisar practicas</a></li>
								<!-- <li><a href="columnas.php">agregar columnas</a></li> -->
							</ul>
						</div>
					</nav>
					<!-- Navbar of the page end -->
				</div>
			</div>
		</header>
		<!-- Header of the page end -->
		<!-- Main of the page -->
		<main id="main">
			<!-- Hero area of the page -->
			<section class="hero-area text-center overlay" style="background-image: url(../../images/ing_civil1.png);" data-scroll-index="0">
				<div id="particles-js"></div>
				<div class="container">
					<div class="row">
						<header class="heading-holder col-xs-12 col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3">
							<br>
							<br>
							<h1 style="font-size: 30px;">Que hay de nuevo? <?php echo $_SESSION['docente_nombre']; ?></h1>
							<br>
							<p>Bienvenido estimado docente <?php echo $_SESSION['docente_apellido']; ?> al panel de docente aqui podra asignar trabajos practicos y revisar los respectivos y muchas otras cosas que todavia estan en una fase temprana de desarrollo</p>
						</header>
					</div>
					<div class="aligncenter">
						<img src="../../images/ing_civil_escudo.png" alt="image description m-top" class="img-responsive">
					</div>
				</div>
			</section>

			<!-- Product Features of the page -->
			<section class="container product-features" data-scroll-index="2">
				<div class="row sameheight-container">
					<!-- Descr of the page -->
					<!-- img holder of the page end -->
				</div>
			</section>




			
			<!-- Trial block of the page end -->
			<!-- Brands area of the page -->
			<aside class="brands-area container">
				<div class="row">
					<header class="col-xs-12 heading-wrap col-sm-6 col-sm-offset-3 text-center">
						<h2>Nuestros patrocinadores</h2>
					</header>
				</div>
				<div class="row">
					<div class="col-xs-12">
			
						<p>por el momento no contamos con apoyo de patrocinadores</p>
						<!-- Logos list of the page end -->
					</div>
				</div>
			</aside>
			<!-- Brands area of the page end -->
		</main>
		<!-- Main of the page end -->
		<!-- Footer of the page -->
		<footer id="footer">
			<!-- Aside of the page -->
			<aside class="aside">
				<div class="container">
					<div class="row">
						<div class="col-xs-12 text-center col-sm-6 col-sm-offset-3">
							<div class="logo"><a href="#"><img src="../../images/logo.svg" alt="mono"></a></div>
							<p>Siguenos en nuestras redes sociales apoyanos con un like o compartiendo con tus amigos</p>
							<!-- Social Networks of the page -->
							<ul class="social-networks">
								<li><a href="https://www.facebook.com/profile.php?id=100075878860594&locale=es_LA"><span class="icon ico-facebook"></span></a></li>
								<li><a href="https://x.com/AxelApazaCarta"><span class="icon ico-twitter"></span></a></li>
								<li><a href="https://interlinked.fun/IndexCarpetas/Acerca%20de%20nosotros/acerca.html"><span class="icon ico-google-plus"></span></a></li>
								<li><a href="https://es.pinterest.com/1axelitomca/"><span class="icon ico-pinterest"></span></a></li>
							</ul>
							<!-- Social Networks of the page end -->
						</div>
					</div>
				</div>
			</aside>
			<!-- Aside of the page end -->
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-4 col-sm-offset-4 text-center">
						<p>&copy; Copyright 2024, <a class="white" href="https://interlinked.fun">Interlinked</a>. <br>todos los derechos reservados</p>
					</div>
				</div>
			</div>
		</footer>
		<!-- Footer of the page end -->
		<!-- Back Top of the page -->
    	<span id="back-top" class="fa fa-angle-up"></span>
    	<div id="loader" class="loader-holder">
			<div class="block"><img src="../../images/svg/hearts.svg" width="100" alt="loader"></div>
		</div>
	</div>
	<!-- Wrapper of the page end -->
	<!-- include jQuery -->
	<script src="../../js/jquery.js"></script>
	<!-- include jQuery -->
	<script src="../../js/plugins.js"></script>
	<!-- include jQuery -->
	<script src="../../js/jquery.main.js"></script>
	<!-- include jQuery -->
	<script src="../../js/particles.js"></script>
	<div id="style-changer" data-src="style-changer.html"></div>
</body>
</html>