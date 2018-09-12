<?php include 'app/views/_global/beforeContent.php'; ?>
    
    <?php 
        if (is_array($DATA['preduzece']))
        $pd = $DATA['preduzece']['basic_data'];
    ?>


      <div class="container">
        <div class="row">
            <a href="<?php echo Configuration::BASE_URL ?>">Pocetna</a> /
            <a href="<?php echo Configuration::BASE_URL ?>preduzeca">Preduzeca</a> /
            <a href="<?php echo Configuration::BASE_URL ?>preduzece"><b>Preduzece</b></a>
        </div>  

        <div class="row">
          <div class="col-lg-12">
            <div class="ads-table">
              <div class="cell-left ads-table-cell cell-align-top">
                  <img src="<?php echo Configuration::BASE_URL ?>assets/img/logo_preduzeca/<?php echo $pd->preduzece_sif ?>.jpg" alt="Doslo je do greske prilikom ucitavanja slike">
              </div>
              <div class="cell-right ads-table-cell cell-align-top">
                  <h1 class="ads-titl cp-titl">
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
                        <a href="http://<?php echo $pd->sajt_link ?>" target="_blank">
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
                            <div>
                                  <strong><?php echo $pd->pun_naziv ?></strong>
                                <br /><br />
                                <?php echo $pd->kratak_opis ?>
                            </div>
                            <div>
                                
                                 <strong>Osnovno:</strong>
                                <br />
                                <ul class="list-group">
                                    <li class="list-group-item">
                                        Adresa: <?php echo $pd->adresa ?>
                                    </li>
                                    <li class="list-group-item">
                                        Regija: <?php echo $pd->regija_naziv ?>
                                    </li>
                                    <li class="list-group-item">
                                        Grad: <?php echo $pd->grad_naziv ?>
                                    </li>
                                    <li class="list-group-item">
                                        Opstina: <?php echo $pd->opstina_naziv ?>
                                    </li>
                                </ul> 
                            </div>
                            <div>
                                 <strong>Ostale delatnosti: </strong>
                                <br />
                                <ul class="list-group">
                                    <?php 
                                        if (is_array($DATA['preduzece']['work_type']))
                                        foreach ($DATA['preduzece']['work_type'] as $delat):
                                    ?>                                
                                    <li class="list-group-item">
                                        Sifra: <strong><?php echo $delat->sifra ?></strong> - <?php echo $delat->Naziv ?>
                                    </li>

                                    <?php endforeach; ?>
                                </ul> 
                            </div>
                                <div>
                                     <strong>Ostale lokacije:</strong>
                                <br />
                            
                                <?php
                                    if (is_array($DATA['preduzece']['locations']))
                                        foreach ($DATA['preduzece']['locations'] as $lok):
                                ?>
                                <ul class="list-group">
                                    <li class="list-group-item">
                                        Adresa: <?php echo $lok->adresa ?>
                                    </li>
                                    <li class="list-group-item">
                                        Regija: <?php echo $lok->regija_naziv ?>
                                    </li>
                                    <li class="list-group-item">
                                        Grad: <?php echo $lok->grad_naziv ?>
                                    </li>
                                    <li class="list-group-item">
                                        Opstina: <?php echo $lok->opstina_naziv ?>
                                    </li>
                                </ul>
                                <?php endforeach; ?> 
                                </div>                               
                        </div>
                    </div>
                    <div class="pd-pics">
                        <h2 class="pd-heading">Slike</h2>
                        <div class="pd-content">
                            <div class="pd-spec-grid">
                                <?php
                                    if (is_array($DATA['preduzece']['images']))
                                        foreach ($DATA['preduzece']['images'] as $slika):
                                ?>
                                    <div class="grider">
                                        <img class="img-fluid" src="<?php echo Configuration::BASE_URL ?><?php $slika->slika ?>" alt="Doslo je do greske prilikom ucitavanja slike">
                                    </div>
                                <?php endforeach; ?>                                
                            </div>
                        </div>
                    </div>
                    <div class="pd-pics">
                        <h2 class="pd-heading">Proizvodi</h2>
                        <div class="pd-content">
                            <div class="pd-content">
                                <div class="pd-spec-grid">
                                    <?php
                                        if (is_array($DATA['preduzece']['products']))
                                            foreach ($DATA['preduzece']['products'] as $prod):
                                    ?>
                                        <div class="grider">
                                            <ul class="list-group">
                                                <li class="list-group-item">
                                                    <strong>Naziv</strong>
                                                    <br />
                                                    <?php echo $prod->naziv ?>
                                                </li>
                                                <li class="list-group-item">
                                                    <strong>Vrsta proizvoda</strong>
                                                    <br />
                                                    <?php echo $prod->naziv_vrsta_proizvoda ?>
                                                </li>
                                                <li class="list-group-item">
                                                    <strong>Cena</strong>
                                                     <br />
                                                    <?php echo $prod->cena ?>
                                                </li>
                                                <li class="list-group-item">
                                                    <strong>Opis</strong>
                                                     <br />
                                                    <?php echo $prod->opis ?>
                                                </li>
                                            </ul>
                                        </div>
                                    <?php endforeach; ?>
                                </div>
                            </div>
                        </div>
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
                                        <?php echo $radno_vreme->otvara ?>h - <?php echo $radno_vreme->zatvara ?>h
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
