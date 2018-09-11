<?php include 'app/views/_global/beforeContent.php'; ?>

    <!-- Main Content -->
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="col-lg-4 col-md-4 col-xs-12 float-left row">
              <form method="POST">
                  
              </form>
          </div>
            
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

<?php include 'app/views/_global/afterContent.php'; ?>