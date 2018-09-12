<?php include 'app/views/_global/beforeContent.php'; ?>
<div class="container mt-5">
    <div class="row">
        <div class="col-12">
            
            <form method="POST" action="<?php echo Configuration::BASE_URL ?>dodajTelefon">
                
                 <div class="col-lg-8 col-md-8 col-xs-12 row">
                     
                <div class="form-group">
                    <label for="_telefon">Telefon</label>
                    <input type="text" name="_telefon" class="form-control" id="_telefon" />
                </div>
                     
                 </div>
                
                <button class="btn btn-success" type="submit">Dodaj</button>
                
            </form>
            
            
        </div>
    </div>
</div>
<?php include 'app/views/_global/afterContent.php'; ?>