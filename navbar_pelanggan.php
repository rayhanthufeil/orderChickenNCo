<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
<a class="navbar-brand ml-5" href="#"><img src="asset/gambar/logo.jpg" height="100" class="navbar-brand"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item <?php
                        if(isset($_GET['menu'])){
                          if($_GET['menu']=='daftar_makanan'){
                            echo "active";
                          }
                        }else{
                            echo "active";
                        }
                      ?>">
        <a class="nav-link" href="pelanggan.php?menu=daftar_makanan">Daftar Makanan</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <a href="logout.php" class="btn btn-warning my-2 my-sm-0">Sign Out</a>
    </form>
  </div>
</nav>