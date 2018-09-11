<?php include 'app/views/_global/beforeContent.php'; ?>

<div class="container">
    <div class="row">
        <div class="col-12">
            <form action="<?php Configuration::BASE_URL ?>novoPreduzece" method="POST">
                <div class="col-lg-4 col-md-4 col-xs-12 float-left row">
                <div class="form-group">
                    <label for="_punNaziv">Naziv</label>
                    <input type="text" name="_punNaziv" class="form-control" id="_punNaziv" />
                </div>
                <div class="form-group">
                    <label for="_kratakNaziv">Kratak naziv</label>
                    <input type="text" name="_kratakNaziv" class="form-control" id="_kratakNaziv" />
                </div>
                <div class="form-group">
                    <label for="_matBroj">Maticni broj</label>
                    <input type="text" name="_matBroj" class="form-control" id="_matBroj" />
                </div>
                <div class="form-group">
                    <label for="_pib">PIB</label>
                    <input type="text" name="_pib" class="form-control" id="_pib" />
                </div>
                <div class="form-group">
                    <label for="_sajtLink">Link sajta</label>
                    <input type="text" name="_sajtLink" class="form-control" id="_sajtLink" />
                </div>
                <div class="form-group">
                    <label for="_telefon">Telefon</label>
                    <input type="text" name="_telefon" class="form-control" id="_telefon" />
                </div>
                <div class="form-group">
                    <label for="_posebneNapomene">Posebne napomene</label>
                    <input type="text" name="_posebneNapomene" class="form-control" id="_posebneNapomene" />
                </div>
                <div class="form-group">
                    <label for="_logotip">Logo</label>
                    <input type="file" name="_logotip" class="form-control" id="_logotip" />
                </div>
                <div class="form-group">
                    <label for="_kratakOpis">Kratak opis</label>
                    <input type="text" name="_kratakOpis" class="form-control" id="_kratakOpis" />
                </div>                     
                </div>
                <div class="col-lg-8 col-md-8 col-xs-12 float-left row">
                    <div class="form-group col-xs-4 col-md-4 col-xs-6 float-left">
                        <label for="_adresa">Adresa</label>
                        <input id="_adresa" type="text" class="form-control" name="_adresa" />
                    </div>
  
                    <div class="form-group col-lg-4 col-md-4 col-xs-6 float-left">
                        <label for="_lokacija_sirina">Lokacija sirina</label>
                        <input id="_lokacija_sirina" type="text" class="form-control" name="_lokacija_sirina" />
                    </div>
                    <div class="form-group col-lg-4 col-md-4 col-xs-6 float-left">
                        <label for="_lokacija_duzina">Lokacija duzina</label>
                        <input id="_lokacija_duzina" type="text" class="form-control" name="_lokacija_duzina" />                        
                    </div>

                <select id="_filter_delatnosti" name="_delatnost" class="demo-default selectized" placeholder="Delatnost" tabindex="-1" style="display: none;">
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

                    
                <select id="_filter_regija" name="_regija" onchange="getResCity($(this).val())" placeholder="Izaberite regiju" tabindex="-1" class="selectized" style="display: none;">
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
                    <select class="form-control" name="_grad" onchange="getResDistrict($(this).val())" id="_filter_gradovi" placeholder="Grad">
                    <option value="" selected="selected"></option>
                </select>
                </div>
                <div class="form-group spec-form">
                    <label for="_filter_opstina">Opstina</label>
                    <select class="form-control" name="_opstina" id="_filter_opstina" placeholder="Opstina">
                    <option value="" selected="selected"></option>
                </select>
                    
                    <div class="form-group">
                        <span>Ponedeljak</span>
                        <input type="number" min="0" max="24" name="_pOd">
                        <input type="number" min="0" max="24" name="_pDo">
                    </div>
                    <div class="form-group">
                        <span>Utorak</span>
                        <input type="number" min="0" max="24" name="_uOd">
                        <input type="number" min="0" max="24" name="_uDo">
                    </div>
                    <div class="form-group">
                        <span>Sreda</span>
                        <input type="number" min="0" max="24" name="_sOd">
                        <input type="number" min="0" max="24" name="_sDo">
                    </div>
                    <div class="form-group">
                        <span>Cetvrtak</span>
                        <input type="number" min="0" max="24" name="_cOd">
                        <input type="number" min="0" max="24" name="_cDo">
                    </div>
                    <div class="form-group">
                        <span>Petak</span>
                        <input type="number" min="0" max="24" name="_peOd">
                        <input type="number" min="0" max="24" name="_peDo">
                    </div>
                    <div class="form-group">
                        <span>Subota</span>
                        <input type="number" min="0" max="24" name="_suOd">
                        <input type="number" min="0" max="24" name="_suDo">
                    </div>
                    <div class="form-group">
                        <span>Nedelja</span>
                        <input type="number" min="0" max="24" name="_neOd">
                        <input type="number" min="0" max="24" name="_neDo">
                    </div>
                    
                </div>
                </div>
                <button class="btn btn-success" type="submit">Dalje</button>
            </form>
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