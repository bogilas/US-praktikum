<?php include 'app/views/_global/beforeContent.php'; ?>

    <!-- Main Content -->
    <div class="container">
    
              
        <div class="row">
            <a href="<?php echo Configuration::BASE_URL ?>">Pocetna</a> /
            <a href="<?php echo Configuration::BASE_URL ?>preduzeca"><b>Preduzeca</b></a>
        </div> 
        
      <div class="row">
        <div class="col-12">
            <div class="col-lg-4 col-md-4 col-xs-12 float-left row" style="padding: 15px;">
                <form class="w-100" action="<?php echo Configuration::BASE_URL ?>preduzeca" method="POST">
                <label for="_filter_delatnosti">Delatnost</label>
              <select id="_filter_delatnosti" name="_delatnost" class="demo-default selectized" tabindex="-1" style="display: none;">
                  <option value="" selected="selected"></option>
                    <?php
                        if (is_array($DATA['delatnosti']))
                        foreach ($DATA['delatnosti'] as $delatnost):
                    ?>
                    <option value="<?php echo $delatnost->delatnosti_SIF ?>">
                        <?php echo $delatnost->Naziv ?>
                    </option>
                    <?php endforeach; ?>
              </select>
                <label for="_filter_vrstaProizvoda">Vrsta proizvoda</label>
                <select id="_filter_vrstaProizvoda" name="_proizvod" class="demo-default selectized" tabindex="-1" style="display: none;">
                  <option value="" selected="selected"></option>
                    <?php
                        if (is_array($DATA['proizvodi']))
                        foreach ($DATA['proizvodi'] as $proizvodi):
                    ?>
                    <option value="<?php echo $proizvodi->vrsta_proizvoda_sif ?>">
                        <?php echo $proizvodi->naziv ?>
                    </option>
                    <?php endforeach; ?>
              </select>
                
                <label for="_filter_regija">Regija</label>
                <select id="_filter_regija" name="_regija" onchange="getResCity($(this).val())" tabindex="-1" class="selectized" style="display: none;">
                  <option value="" selected="selected"></option>
                  <?php 
                        if (is_array($DATA['regioni']))
                        foreach ($DATA['regioni'] as $regioni):                  
                  ?>
                    <option value="<?php echo $regioni->regija_sif ?>">
                        <?php echo $regioni->naziv ?>
                    </option>                  
                  <?php endforeach; ?>
              </select>
                <div class="form-group spec-form">
                    <label for="_filter_gradovi">Grad</label>
                    <select class="form-control" name="_grad" onchange="getResDistrict($(this).val())" id="_filter_gradovi">
                    <option value="" selected="selected"></option>
                </select>
                </div>
                <div class="form-group spec-form">
                    <label for="_filter_opstina">Opstina</label>
                    <select class="form-control" name="_opstina" id="_filter_opstina">
                    <option value="" selected="selected"></option>
                </select>
                </div>
                <div class="form-group spec-form">
                    <label for="_filter_kompanija">Kompanija</label>
                    <input type="search" name="_komp_ime" class="form-control" id="_filter_kompanija">
                </div>
                <div class="form-group spec-form">
                    <label for="_filter_dani">Dani</label>
                    <select class="form-control" name="_dani" id="_filter_dani">
                    <option value="" selected="selected">Bilo koji</option>
                    <option value="0" >Ponedeljak</option>
                    <option value="1" >Utorak</option>
                    <option value="2" >Sreda</option>
                    <option value="3" >Cetvrtak</option>
                    <option value="4" >Petak</option>
                    <option value="5" >Subota</option>
                    <option value="6" >Nedelja</option>
                </select>
                </div>
                <div class="form-group spec-form">
                    <label for="_filter_vreme">Vreme</label>
                    <input type="number" id="_filter_vreme" min="0" max="24" name="_sat" class="form-control" placeholder="Radno vreme" >
                </div>
                <button class="btn btn-info" type="submit">Filtriraj</button>
                </form>
          </div>
            
        <?php if (isset($DATA['error'])): ?>
            <div>
                    <?php echo htmlspecialchars($DATA['error']); ?>
            </div>
        <?php endif; ?>
            
            
            <?php
                if (is_array($DATA['preduzeca']))
                foreach ($DATA['preduzeca'] as $preduzece):
            ?>
            
            <div class="col-lg-8 col-md-8 col-xs-12 float-left row">
                <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 col-bottom-margin">
                    <div class="ads-eleme">
                        <a href="<?php echo Configuration::BASE_URL ?>preduzece/<?php echo $preduzece->preduzece_sif ?>">
                            <div class="ads-logo">
                              <div class="ads-logo-bg-blur"></div>
                              <img class="img-fluid" src="<?php echo Configuration::BASE_URL ?><?php echo $preduzece->logotip ?>" alt="Doslo je do greske prilikom ucitavanja slike">
                            </div>
                            <div class="ads-intermid">
                                <h2 class="ads-titl">
                                    <?php echo $preduzece->pun_naziv ?>
                                </h2>
                              <div class="ads-address">
                                <?php echo $preduzece->adresa ?>, <?php echo $preduzece->grad_naziv ?>,
                                <?php echo $preduzece->regija_naziv ?>, <?php echo $preduzece->opstina_naziv ?>
                              </div>
                                <div class="ads-address">
                                    Delatnost: <strong><?php echo $preduzece->glavna_delatnost ?></strong>
                                </div>
                            </div>
                            <div class="ads-desc">
                              <?php echo $preduzece->kratak_opis ?>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
              
            <?php endforeach; ?>
          </div>
        </div>
      </div>
    </div>
<script>
    function getResCity($id) {
        $.ajax({
            url: '<?php Configuration::BASE_URL ?>ajaxCallCity/' + $id,
                success: function(results) {
                    $('#_filter_gradovi option').each(function () {
                       $(this).remove(); 
                    });
                    $('#_filter_gradovi').append(results);
                },
                error: function() {
                    
                }
        });
    }
    function getResDistrict($id) {
        $.ajax({
            url: '<?php Configuration::BASE_URL ?>ajaxCallDistrict/' + $id,
                success: function(results) {
                    $('#_filter_opstina option').each(function () {
                       $(this).remove(); 
                    });
                    $('#_filter_opstina').append(results);
                },
                error: function() {
                    
                }
        });
    }    

</script>
<?php include 'app/views/_global/afterContent.php'; ?>