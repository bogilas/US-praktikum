<!DOCTYPE html>
<html lang="sr">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Univerzitet Singidunum, predmet: Praktikum Internet i VEB tehnologije">
    <meta name="author" content="Bogdan Popovic">

    <title>Bocgilas</title>
    
    <link rel="shortcut icon" href="<?php echo Configuration::BASE_URL; ?>assets/img/favicon.ico">
    
    <!-- Bootstrap core CSS -->
    <link href="<?php echo Configuration::BASE_URL; ?>assets/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom fonts for this template -->
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="<?php echo Configuration::BASE_URL; ?>assets/css/custom.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
          <a class="navbar-brand" href="<?php echo Configuration::BASE_URL ?>">
              <img class="img-fluid" src="<?php echo Configuration::BASE_URL ?>assets/img/logo.png" >
          </a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Meni
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="<?php echo Configuration::BASE_URL ?>">Početna</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?php echo Configuration::BASE_URL ?>preduzeca">Preduzeća</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?php echo Configuration::BASE_URL ?>kontakt">Kontakt</a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link" data-toggle="modal" data-target="#prijavaModal">
                    Prijava
                </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Modal -->
      <div class="modal fade" id="prijavaModal" tabindex="-1" role="dialog" aria-labelledby="Prijava" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <form action="/prijava" method="POST">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Prijava</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="_prijava_email">Email</label>
                        <input type="email" class="form-control" id="_prijava_email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" placeholder="peraperic@gmail.com">    
                    </div>
                    <div class="form-group">
                        <label for="_prijava_lozinka">Lozinka</label>
                        <input type="password" class="form-control" id="_prijava_lozinka" required pattern="^.{6,}$">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Prijavi se</button>
                    <button type="button" data-toggle="modal" data-target="#registracijaModal" class="btn btn-info">Registruj se</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Odustani</button>
                </div>
            </div>
            </form>
        </div>
    </div>
    <div class="modal fade" id="registracijaModal" tabindex="-1" role="dialog" aria-labelledby="Registracija" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <form action="/registracija" method="POST">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Registracija</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                        <div class="form-group">
                          <label for="_reg_ime">Ime</label>
                          <input type="text" name="ime" class="form-control" id="_reg_ime" required>
                        </div>      
                        <div class="form-group">
                          <label for="_reg_prezime">Prezime</label>
                          <input type="text" name="prezime" class="form-control" id="_reg_prezime" required>
                        </div>
                        <div class="form-group">
                          <label for="_reg_email">Email</label>
                          <input type="email" name="email" class="form-control" id="_reg_email" required>
                        </div>
                        <div class="form-group">
                          <label for="_reg_telefon">Telefon</label>
                          <input type="text" name="telefon" class="form-control" id="_reg_telefon" required>
                        </div>
                        <div class="form-group">
                          <label for="_reg_adresa">Adresa</label>
                          <input type="text" name="adresa" class="form-control" id="_reg_adresa" required>
                        </div>                        
                        <div class="form-group">
                          <label for="_reg_lozinka">Lozinka</label>
                          <input type="password" name="lozinka" class="form-control" id="_reg_lozinka" required>
                        </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Potvrdi</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Odustani</button>
                </div>
            </div>
            </form>
        </div>        
    </div>
    
    <!-- Page Header -->
    <header class="masthead">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="site-heading">
              <h1>Bocgilas Komerc</h1>
              <span class="subheading">Najbolje oglašavanje pravnih lica u regionu</span>
            </div>
          </div>
        </div>
      </div>
    </header>

    <main>
