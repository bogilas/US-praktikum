
                    <option value="" selected="selected">
                        Bilo koji
                    </option>

                <?php 
                        if (is_array($DATA['opstine']))
                        foreach ($DATA['opstine'] as $opstina):                  
                  ?>
                    <option value="<?php echo $opstina->opstina_sif ?>">
                        <?php echo $opstina->naziv ?>
                    </option>                  
                  <?php endforeach; ?>

