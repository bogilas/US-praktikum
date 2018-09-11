<?php include 'app/views/_global/beforeContent.php'; ?>

<div class="container">
    <div class="row">
        <div class="col-12">
            <table class="table table-striped">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Naziv</th>
                    <th scope="col">Opis</th>
                    <th scope="col">Detaljan pregled</th>
                  </tr>
                </thead>
                <tbody>
                    <?php
                        if (is_array($DATA['preduzeca']))   
                            foreach ($DATA['preduzeca'] as $pred):
                    ?>
                    <tr>
                        <th scope="row">
                            <?php $pred->preduzece_sif ?>
                        </th>
                        <td>
                            <?php $pred->kratak_naziv ?>
                        </td>
                        <td>
                            <?php $pred->kratak_opis ?>
                        </td>
                        <td>
                            <a class="btn btn-info" href="<?php echo Configuration::BASE_URL ?>odobravanje/<?php echo $pred->preduzece_sif ?>">Pregledaj</a>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>    

<?php include 'app/views/_global/afterContent.php'; ?>

