<?php include 'app/views/_global/beforeContent.php'; ?>
    
    <?php 
        if (is_array($DATA['preduzece']))
        $pd = $DATA['preduzece']['basic_data'];
    ?>


      <div class="container">
        <div class="row">
          NAVIGATION TODO TODO TODO
        </div>  

        <div class="row">
          <div class="col-lg-12">
            <div class="ads-table">
              <div class="cell-left ads-table-cell cell-align-top">
                  <img src="<?php echo Configuration::BASE_URL ?><?php echo $pd->logotip ?>" alt="Doslo je do greske prilikom ucitavanja slike">
              </div>
              <div class="cell-right ads-table-cell cell-align-top">
                  <h1 class="ads-titl">
                      <?php echo $pd->pun_naziv ?>
                  </h1>
                <div class="ads-category">
                    Delatnost: <?php echo $pd->glavna_delatnost ?>
                </div>
                <ul class="ads-info">
                    <li>
                        <strong>PIB:</strong>
                        <?php echo $pd->pib ?>
                    </li>
                    <li>
                        <strong>Maticni broj:</strong>
                        <?php echo $pd->mat_br ?>
                    </li>
                    <li>
                        <strong>Adresa:</strong>
                        <?php echo $pd->adresa ?>, <?php echo $pd->regija_naziv ?>, <?php echo $pd->grad_naziv ?>
                    </li>
                    <li>
                        <strong>Telefon:</strong>
                        <?php echo $pd->telefon ?>
                    </li>
                    <li>
                        <strong>Sajt preduzeca:</strong>
                        <a href="<?php echo $pd->sajt_link ?>" target="_blank">
                            <?php echo $pd->sajt_link ?>
                        </a>
                    </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
          
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <div class="pd-main">
                    <div class="pd-infos">
                        <div class="pd-info-content">
                            <p>
                                <strong><?php echo $pd->pun_naziv ?></strong>
                                <br />
                                <?php echo $pd->kratak_opis ?>
                            </p>
                            <p>
                                <strong>Osnovno:</strong>
                                <br />
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <?php echo $pd->adresa ?>
                                </li>
                                <li class="list-group-item">
                                    <?php echo $pd->regija_naziv ?>
                                </li>
                                <li class="list-group-item">
                                    <?php echo $pd->grad_naziv ?>
                                </li>
                                <li class="list-group-item">
                                    <?php echo $pd->opstina_naziv ?>
                                </li>
                            </ul>
                            </p>
                            <p>
                                <strong>Delatnosti: </strong>
                                <br />
                              
                            </p>
                        </div>
                    </div>
                    <div class="pd-pics">
                        
                    </div>
                </div>
            </div>            
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="pd-sidebar">
                    <div class="pd-map">
                    </div>
                    <div class="pd-hours">
                        <h2 class="pd-heading">
                            Radno vreme
                        </h2>
                        <div class="pd-content">
                            <table class="working-hours">
                                <?php 
                                    if (is_array($DATA['preduzece']['work_days']))
                                    $dani = ['Ponedeljak', 'Utorak', 'Sreda', 'Cetvrtak', 'Petak', 'Subota', 'Nedelja'];    
                                     
                                    foreach ($DATA['preduzece']['work_days'] as $radno_vreme):
                                ?>                                
                                <tr>
                                    <td class="day">
                                        <?php echo $dani[$radno_vreme->day] ?>
                                    </td>
                                    <td class="time">
                                        <?php echo $radno_vreme->otvara ?> - <?php echo $radno_vreme->zatvara ?>
                                    </td>
                                </tr>
                                <?php endforeach; ?>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>


<?php include 'app/views/_global/afterContent.php'; ?>
