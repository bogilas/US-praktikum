<?php include 'app/views/_global/beforeContent.php'; ?>
<div class="container mt-5">
    <div class="row">
        <div class="col-12">
            <div class="btn-group btn-group-justified col-12 adders">
            <a href="<?php echo Configuration::BASE_URL ?>dodajDelatnost" class="btn btn-info col-4 mr-2">Dodaj delatnost</a>
            <a href="<?php echo Configuration::BASE_URL ?>dodajLokaciju" class="btn btn-info col-4 mr-2">Dodaj lokacije</a>
            <a href="<?php echo Configuration::BASE_URL ?>dodajProizvod" class="btn btn-info col-4 mr-2">Dodaj proizvode</a>
            <a href="<?php echo Configuration::BASE_URL ?>dodajSliku" class="btn btn-info col-4 mr-2">Dodaj slike</a>
            <a href="<?php echo Configuration::BASE_URL ?>dodajTelefon" class="btn btn-info col-4 mr-2">Dodaj telefon</a>
            <a href="#" class="btn btn-success col-4">ZAVRSI</a>
          </div>
        </div>
    </div>
</div>
<?php include 'app/views/_global/afterContent.php'; ?>