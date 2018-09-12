<?php include 'app/views/_global/beforeContent.php'; ?>

        <?php if (session::exists('error')): ?>
            <div class="text-center">
                <?php echo session::get('error') ?>
            </div>
        <?php session::delete('error'); endif; ?>

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


    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-xs-12 row">
                <?php
                    if (is_array($DATA['preduzeca']))
                    foreach ($DATA['preduzeca'] as $preduzece):
                ?>
                    <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 col-bottom-margin">
                        <div class="ads-eleme">
                            <a href="<?php echo Configuration::BASE_URL ?>preduzece/<?php echo $preduzece->preduzece_sif ?>">
                                <div class="ads-intermid">
                                    <h2 class="ads-titl homer-down">
                                        <?php echo $preduzece->vrsta_delatnosti_naziv ?>
                                    </h2>
                                    <div class="ads-address">
                                        Preduzece: <strong><?php echo $preduzece->pun_naziv ?></strong>
                                        <br/>
                                        Delatnost: <strong><?php echo $preduzece->glavna_delatnost ?></strong>
                                        <br />
                                        Sajt: <strong onclick="window.open('http://<?php echo $preduzece->sajt_link ?>')"><?php echo $preduzece->sajt_link ?></strong>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>              
                <?php endforeach; ?>                
            </div>
        </div>
    </div>

<?php include 'app/views/_global/afterContent.php'; ?>