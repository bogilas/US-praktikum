<?php include 'app/views/_global/beforeContent.php'; ?>

    <!-- Main Content -->
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="col-lg-4 col-md-4 float-left row">
            <span>Hey ho</span>
          </div>
            
            <?php
                if (is_array($DATA['preduzeca']))
                foreach ($DATA['preduzeca'] as $preduzece):
            ?>
            
            <div class="col-lg-8 col-md-8 float-left row">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-bottom-margin">
                    <div class="ads-item">
                        <a href="<?php echo Configuration::BASE_URL ?>preduzece/<?php echo htmlspecialchars($preduzece->preduzece_sif) ?>">
                            <div class="ads-logo">
                              <div class="ads-logo-bg-blur"></div>
                              <img src="<?php echo $preduzece->logotip ?>" alt="Doslo je do greske prilikom ucitavanja slike">
                            </div>
                            <div class="ads-intermid">
                                <h2 class="ads-title">
                                    <?php echo $preduzece->pun_naziv ?>
                                </h2>
                              <div class="ads-address">
                                <?php echo $preduzece->adresa ?>
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