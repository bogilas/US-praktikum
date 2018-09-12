<?php include 'app/views/_global/beforeContent.php'; ?>

<div class="container mt-5">
    <div class="row">
        <div class="col-12">
            
            <form method="POST" action="<?php echo Configuration::BASE_URL ?>dodajLokaciju">
                
                 <div class="col-lg-8 col-md-8 col-xs-12 row">
                     
                                       
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
                     
                                        <div class="form-group col-lg-4 col-md-4 col-xs-6 float-left">
                        <label for="_lokacija_sirina">Lokacija sirina</label>
                        <input id="_lokacija_sirina" type="text" class="form-control" name="_lokacija_sirina" />
                    </div>
                    <div class="form-group col-lg-4 col-md-4 col-xs-6 float-left">
                        <label for="_lokacija_duzina">Lokacija duzina</label>
                        <input id="_lokacija_duzina" type="text" class="form-control" name="_lokacija_duzina" />                        
                    </div>
                    <div class="form-group col-lg-4 col-md-4 col-xs-6 float-left">
                        <label for="_adresa">Adresa</label>
                        <input id="_adresa" type="text" class="form-control" name="_adresa" required="required" />
                    </div>
                    
                    
                 </div>
                
                <button class="btn btn-success" type="submit">Dodaj</button>
                
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