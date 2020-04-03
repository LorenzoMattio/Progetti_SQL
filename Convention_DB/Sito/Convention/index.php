<!DOCTYPE html>
<?php
  include 'connessione_DB/connessione_DB.php';
  include 'classi_php/Speech.php';
  include 'classi_php/Sale.php';
?>
<?php
$query = "SELECT Speech.CodiceSpeech, Speech.Titolo, Speech.Descrizione, COUNT(MN_Partecipano.MatricolaPersona) AS nPartecipanti FROM MN_Partecipano, Programma, Speech WHERE Speech.CodiceSpeech = Programma.CodiceSpeech AND Programma.CodiceProgramma = MN_Partecipano.CodiceProgramma GROUP BY Speech.CodiceSpeech ORDER BY nPartecipanti DESC";
$risultato = $connessione->query($query);
$listaSpeech = array();

while ($row = $risultato->fetch_assoc()) {
  $tmpT = $row["Titolo"];
  $tmpD = $row["Descrizione"];
  $oggetto = new Speech($tmpT, $tmpD);
  array_push($listaSpeech, $oggetto);
}

$query = "SELECT Sala.Nome, Sala.Capacità FROM Sala;";
$risultato = $connessione->query($query);
$listaSale = array();

while ($row = $risultato->fetch_assoc()) {
  $tmpN = $row["Nome"];
  $tmpC = $row["Capacità"];
  $oggetto = new Sale($tmpN, $tmpC);
  array_push($listaSale, $oggetto);
}


?>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Mattio Convention - HOME</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

</head>

<body>

  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-none d-lg-block">
    <div class="container d-flex">
      <div class="contact-info mr-auto">
        <i class="icofont-envelope"></i><a href="mailto:info@mattioconvention.com">info@mattioconvention.com</a>
        <i class="icofont-phone"></i> +39 0175 112233
      </div>
      <div class="social-links">
        <a href="#" class="facebook"><i class="icofont-facebook"></i></a>
        <a href="#" class="instagram"><i class="icofont-instagram"></i></a>
      </div>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header">
    <div class="container d-flex">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="index.html"><span>Mattio</span></a></h1>
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="index.html">Home</a></li>

          <li class="drop-down"><a href="#">About</a>
            <ul>
              <li><a href="about.html">About Us</a></li>
              <li><a href="team.html">Team</a></li>

              <li class="drop-down"><a href="#">Drop Down 2</a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
            </ul>
          </li>

          <li><a href="services.html">Services</a></li>
          <li><a href="portfolio.html">Portfolio</a></li>
          <li><a href="pricing.html">Pricing</a></li>
          <li><a href="blog.html">Blog</a></li>
          <li><a href="contact.html">Contact</a></li>

        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero">
      <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">
        <div class="carousel-item active" style="background: url(assets/img/slide/slide-1.jpg)">
          <div class="carousel-container">
            <div class="carousel-content">
              <h2 class="animated fadeInDown">Welcome to <span>MattioConvention</span></h2>
              <p class="animated fadeInUp">Il centro congressi di MattioConvention è situato a 2 km dal nuovo polo fieristico di Rho-Pero, lungo l'asse che da Milano porta all'aeroporto internazionale di Malpensa ed alle principali direttrici europee. Posto all'interno di un suggestivo complesso settecentesco ristrutturato di recente, è circondato da un grande e meraviglioso parco e da un grazioso giardino all'italiana, spazi che tutelano e favoriscono il silenzio.</p>
              <!-- Button leggi di più <a href="" class="btn-get-started animated fadeInUp">Read More</a> -->
            </div>
          </div>
        </div>
      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Featured Section ======= -->
    <section id="featured" class="featured">
      <div class="container">
        <?php
        $indice = -1;
        for($i = 0; $i < count($listaSpeech)/3; $i++){
          ?>
          <div class="row">
          <?php
          for($a = 0; $a < 3; $a++){
            $indice = $indice + 1;
            if ($indice != count($listaSpeech)){
              if ($a == 0){
                ?><div class="col-lg-4"><?php
              }else {
                ?><div class="col-lg-4 mt-4 mt-lg-0"><?php
              }
              ?>
              <div class="icon-box">
              <h3><a href=""><?php echo $listaSpeech[$indice]->getTitolo(); ?></a></h3>
              <?php
                $prova = array();
                $prova =  wordwrap($listaSpeech[$indice]->getDescrizione(), 155);
                $rest = substr("abcdef", -3, 1); // returns "d"
              ?>
              <p>
                <?php
                  if (strlen($listaSpeech[$indice]->getDescrizione()) > 100){
                    for( $f = 0; $f < 100; $f++){
                      echo $listaSpeech[$indice]->getDescrizione()[$f];
                    }
                  }else {
                    echo $listaSpeech[$indice]->getDescrizione();
                  }
                ?>...
              </p>
              </div>
              </div>

              <?php
            }
          }
          ?></div><br><?php
        }
         ?>
    </section><!-- End Featured Section -->

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="row">
          <div class="col-lg-6">
            <img src="assets/img/about.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 content">
            <h3>Voluptatem dignissimos provident quasi corporis voluptates sit assumenda.</h3>
            <p class="font-italic">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
              magna aliqua.
            </p>
            <ul>
              <li><i class="icofont-check-circled"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
              <li><i class="icofont-check-circled"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
              <li><i class="icofont-check-circled"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>
            </ul>
            <p>
              Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
              velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
              culpa qui officia deserunt mollit anim id est laborum
            </p>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Services Section ======= -->
    <section  class="services">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2>Le nostre sale convegni:</h2>
        </div>

        <?php
        $indice = -1;
        for($i = 0; $i < count($listaSale)/3; $i++){
          ?>
          <div class="row">
          <?php
          for($a = 0; $a < 3; $a++){
            $indice = $indice + 1;
            if ($indice != count($listaSale)){
              ?>
              <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
                <div class="icon-box">
                  <!-- <div class="icon"><i class="bx bxl-dribbble"></i></div> -->
                  <h4><a href=""><?php echo $listaSale[$indice]->getNome(); ?></a></h4>
                  <p >Capacita massima della sala:<br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br>
                  <font size="6"><?php echo $listaSale[$indice]->getCapacita(); ?></font><br></p>
                </div>
              </div>


              <?php
            }
          }
          ?></div><br><?php

        }
         ?>

    </section><!-- End Services Section -->

    <!-- ======= Clients Section ======= -->
    <section id="clients" class="clients">
      <div class="container">

        <div class="section-title">
          <h2>Clients</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="owl-carousel clients-carousel">
          <img src="assets/img/clients/client-1.png" alt="">
          <img src="assets/img/clients/client-2.png" alt="">
          <img src="assets/img/clients/client-3.png" alt="">
          <img src="assets/img/clients/client-4.png" alt="">
          <img src="assets/img/clients/client-5.png" alt="">
          <img src="assets/img/clients/client-6.png" alt="">
          <img src="assets/img/clients/client-7.png" alt="">
          <img src="assets/img/clients/client-8.png" alt="">
        </div>

      </div>
    </section><!-- End Clients Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-newsletter">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <h4>Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
          </div>
          <div class="col-lg-6">
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>Contact Us</h4>
            <p>
              A108 Adam Street <br>
              New York, NY 535022<br>
              United States <br><br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> info@example.com<br>
            </p>

          </div>

          <div class="col-lg-3 col-md-6 footer-info">
            <h3>About Eterna</h3>
            <p>Cras fermentum odio eu feugiat lide par naso tierra. Justo eget nada terra videa magna derita valies darta donna mare fermentum iaculis eu non diam phasellus.</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Eterna</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/eterna-free-multipurpose-bootstrap-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/jquery-sticky/jquery.sticky.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="assets/vendor/counterup/counterup.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>
