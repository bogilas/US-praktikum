<?php include 'app/views/_global/beforeContent.php'; ?>
<div class="container mt-5">
    <div class="row">
        <div class="col-12">
            
            <form method="POST">
                
                 <div class="col-lg-8 col-md-8 col-xs-12 row">
                     
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
                     
                 </div>
                
                <button class="btn btn-success" type="submit">Dodaj</button>
                
            </form>
            
            
        </div>
    </div>
</div>
<?php include 'app/views/_global/afterContent.php'; ?>