

                    <option value="" selected="selected">
                        Bilo koji
                    </option>

                  <?php 
                        if (is_array($DATA['gradovi']))
                        foreach ($DATA['gradovi'] as $gradovi):                  
                  ?>
                    <option value="<?php echo $gradovi->grad_sif ?>">
                        <?php echo $gradovi->naziv ?>
                    </option>                  
                  <?php endforeach; ?>