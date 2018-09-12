<?php include 'app/views/_global/beforeContent.php'; ?>

<div class="container mt-5">
    <div class="row">
        <div class="col-12">
            
            <form method="POST" action="<?php echo Configuration::BASE_URL ?>dodajProizvod">
                
                 <div class="col-lg-8 col-md-8 col-xs-12 row">
                 
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
                    <div class="form-group col-lg-4 col-md-4 col-xs-6 float-left">
                        <label for="_naziv">Naziv</label>
                        <input id="_naziv" type="text" class="form-control" name="_naziv" required="required" />
                    </div>
                    <div class="form-group col-lg-4 col-md-4 col-xs-6 float-left">
                        <label for="_opis">Opis</label>
                        <input id="_opis" type="text" class="form-control" name="_opis" required="required" />
                    </div>
                    <div class="form-group col-lg-4 col-md-4 col-xs-6 float-left">
                        <label for="_cena">Cena</label>
                        <input id="_cena" type="text" class="form-control" name="_cena" required="required" />
                    </div>
                     
                     
                 </div>
                
                <button class="btn btn-success" type="submit">Dodaj</button>
                
            </form>
            
            
        </div>
    </div>
</div>
<?php include 'app/views/_global/afterContent.php'; ?>