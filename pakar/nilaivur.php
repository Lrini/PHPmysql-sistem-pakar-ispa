<?php 
include "inc.session.php"; 
include "../lib/inc.koneksidb.php";
?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Sistem Pakar ISPA</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <link rel="stylesheet" type="text/css" href="../css/buttons.css" />
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/jquery.searchable-1.1.0.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.js"></script>
</head>
<body>
  <div class="container-fluid">
    <div class="isi"><br>

<nav class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle navbar-toggle-sidebar collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
      MENU
      </button>
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">
        Administrator / Pakar
      </a>
    </div>

  <!-- navbar kanan collapse -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">      
      <div class="navbar-form navbar-left">
        <div class="form-group">
          <input id="search" type="search" class="form-control" placeholder="Pencarian data">
        </div>
    </div>    
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
            Akun
            <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
              <li class=""><a href="editAkun.php">Edit Akun</a></li>
              <li class="divider"></li>
              <li><a href="LoginOut.php" target="_self">Logout</a> </li>
            </ul>
          </li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav> </br>

  <div class="container-fluid main-container">
      <div class="col-md-2 sidebar">
        <div class="row">
  <!-- uncomment code for absolute positioning tweek see top comment in css -->
  <div class="absolute-wrapper"> </div>

  <!-- Menu -->
   <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
  <div class="side-menu">
    <nav class="navbar navbar-default" role="navigation">
      <!-- Main Menu -->
      <div class="side-menu-container">
        <ul class="nav navbar-nav">
          
          <li><a href="index.php">Beranda</a></li>
          <li><a href="LapPenyakitSemua.php">Lap Penyakit</a></li>
          <li><a href="RelasiAddPilih.php">Buat Relasi</a></li>

          <!-- Dropdown penyakit-->
          <li class="panel panel-default" id="dropdown">
            <a data-toggle="collapse" href="#dropdown-penyakit">
             Penyakit <span class="caret"></span>
            </a>
            <!-- Dropdown level 1 penyakit -->
            <div id="dropdown-penyakit" class="panel-collapse collapse">
              <div class="panel-body">
                <ul class="nav navbar-nav">
                  <li><a href="PenyakitTampil.php">Edit</a></li>
                  <li><a href="PenyakitAddFm.php">Tambah</a></li>
                </ul>
              </div>
            </div>
          </li>
          <!-- /Dropdown penyakit--> 

            <!-- Dropdown gejala-->
          <li class="panel panel-default" id="dropdown">
            <a data-toggle="collapse" href="#dropdown-gejala">
             Gejala<span class="caret"></span>
            </a>
            <!-- Dropdown level 1 gejala -->
            <div id="dropdown-gejala" class="panel-collapse collapse">
              <div class="panel-body">
                <ul class="nav navbar-nav">
                  <li><a href="GejalaTampil.php">Edit</a></li>
                  <li><a href="GejalaAddFm.php">Tambah</a></li>
                </ul>
              </div>
            </div>
          </li>
          <!-- /Dropdown gejala--> 
          
        <!-- Dropdown akusisi pengetahuan-->
          <li class="panel panel-default" id="dropdown">
            <a data-toggle="collapse" href="#dropdown-akusisipengetahuan">
             Akusisi Pengetahuan<span class="caret"></span>
            </a>
            <!-- Dropdown level 1 akusisi pengetahuan -->
            <div id="dropdown-akusisipengetahuan" class="panel-collapse collapse">
              <div class="panel-body">
                <ul class="nav navbar-nav">
                  <li><a href="nilaivur.php">Nilai VUR</a></li>
                  <li><a href="nilainur.php">Nilai NUR</a></li>
                  <li><a href="nilairur.php">Nilai RUR</a></li>
                  <li><a href="updatepengetahuan.php">Update Pengetahuan</a></li>
                </ul>
              </div>
            </div>
          </li>
          <!-- /Dropdown Akusisi Pengetahuan--> 
        
        </ul>
      </div><!-- /.navbar-collapse -->
    </nav>

  </div>
</div>

  </div>      
</div>

      <div class="col-md-10 content">
          <div class="panel panel-default">
  <div class="panel-heading">
<b>Nilai VUR</b>
  </div>
  <div class="panel-body">
    
    <table class="table table-striped" id="table">
   <tr> 
    <th width="28" >No</th>
    <th width="150">Kode Penyakit</th>
    <th width="150">Nama Penyakit</th>
    <th width="150">Kode Gejala</th>
    <th width="300">Nama Gejala</th>
    <th width="200" colspan="2"> Nilai VUR</th>
  </tr>

  <?php 
  $sql = "SELECT * FROM relasi,penyakit,gejala where relasi.kd_penyakit=penyakit.kd_penyakit and relasi.kd_gejala=gejala.kd_gejala";
  $qry = mysql_query($sql, $koneksi) or die ("SQL Error".mysql_error());
  $no = 0;
  while ($data=mysql_fetch_array($qry)) {
  $no++;
  ?>
  <tr > 
    <td align="center"><?php echo $no; ?></td>
    <td><?php echo $data['kd_penyakit']; ?></td>
    <td><?php echo $data['nm_penyakit']; ?></td>
    <td><?php echo $data['kd_gejala']; ?></td>
    <td><?php echo $data['nm_gejala']; ?></td>
    <td align="right"> 
  </tr>
  <?php
  }
  ?>
  <tr> 
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
   
  </tr>
</table>

</div>
</div>
      </div>


    </div>
</br>
       <!-- footer start -->
<div class="bawah"><div class="copy">
            <p> Sistem Pakar Diagnosa Penyakit ISPA </p>
        </div>
    </div>
<!-- footer end -->
</br>
</div>
</div>
</body>
</html>
