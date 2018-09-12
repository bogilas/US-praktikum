<?php include 'app/views/_global/beforeContent.php'; ?>

        <?php if (session::exists('error')): ?>
            <div class="text-center">
                <?php echo session::get('error') ?>
            </div>
        <?php session::delete('error'); endif; ?>

    <!-- Page Header -->
    <header class="masthead">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-md-10 mx-auto">
            <div class="site-heading">
              <h1>Bocgilas Komerc</h1>
              <span class="subheading">Najbolje oglašavanje pravnih lica u regionu</span>
            </div>
          </div>
        </div>
      </div>
    </header>


    <!-- Main Content -->
    <div class="container">
        
        
        
    </div>

<?php include 'app/views/_global/afterContent.php'; ?>