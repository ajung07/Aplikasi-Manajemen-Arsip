<?php
    //cek session
    if(!empty($_SESSION['admin'])){
?>

<nav class="green">
    <div class="nav-wrapper">
        <a href="./" class="brand-logo center hide-on-large-only"></i> AMA </a>
        <ul id="slide-out" class="side-nav" data-simplebar-direction="vertical">
      
            <li class="no-padding rad ">
                <ul class="collapsible collapsible-accordion">
                    <li>
                        <a class="collapsible-header"><i class="material-icons">account_circle</i><?php echo $_SESSION['nama']; ?></a>
                        <div class="collapsible-body">
                            <ul>
                                <li><a href="?page=pro">Profil</a></li>
                                <li><a href="?page=pro&sub=pass">Ubah Password</a></li>
                                <li><a href="logout.php">Logout</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </li>
            <li><a href="./"><i class="material-icons middle">dashboard</i> Beranda</a></li>
            <li class="no-padding">
                <?php
                    if($_SESSION['admin'] == 1 || $_SESSION['admin'] == 3){ ?>
                <ul class="collapsible collapsible-accordion">
                    <li>
                        <a class="collapsible-header"><i class="material-icons">repeat</i> Tata Naskah & Kearsipan </a>
                        <div class="collapsible-body">
                            <ul>
                                <li><a href="?page=tsm"> Data Klasifiksi</a></li>
                                <li><a href="?page=tsk">Pedoman</a></li>
                            </ul>
                        </div>
                   </li>
                </ul>

                <?php
                    }
                ?>      

            <li class="no-padding">
                <ul class="collapsible collapsible-accordion">
                    <li>
                    <a class="collapsible-header"><i class="material-icons">image</i> Galeri</a>
                        <div class="collapsible-body">
                            <ul>
                                <li><a href="?page=tf"> tambah </a></li>
                                <li><a href="?page=gf"> tampil </a></li>
                            </ul>
                        </div>

                    </li>
                </ul>
            </li>
            <li class="no-padding">
                <ul class="collapsible collapsible-accordion">
                    <li>
                        
                    </li>
                </ul>
            </li>
            
            <li class="no-padding"> 
            <?php
                if($_SESSION['admin'] == 1){ ?>
                <ul class="collapsible collapsible-accordion">
                    <li>
                        <a class="collapsible-header"><i class="material-icons">settings</i> Pengaturan</a>
                        <div class="collapsible-body">
                            <ul>
                        
                                <li><a href="?page=sett&sub=usr">User</a></li>
                              
                            </ul>
                        </div>
                    </li>
                </ul>
            <?php
                }
            ?>
         
            <li class="no-padding">
                <ul class="collapsible collapsible-accordion">
                    <li>
                        <a class="collapsible-header"><i class="material-icons">image</i> Galeri</a>
                        <div class="collapsible-body">
                            <ul>
                                <li><a href="?page=tf"> tambah </a></li>
                                <li><a href="?page=gf"> Tampil </a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </li>


            <?php
                if($_SESSION['admin'] == 2){ ?>
                <ul class="collapsible collapsible-accordion">
                    <li>
                        <a class="collapsible-header"><i class="material-icons">settings</i> Pengaturan</a>
                        <div class="collapsible-body">
                            <ul>
                               <!-- <li><a href="?page=sett">Instansi</a></li> --->
                                <li><a href="?page=sett&sub=usr">User</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            <?php
                }
            ?>
            </li>
        </ul>
        <!-- Menu on medium and small screen END -->

        <!-- Menu on large screen START -->
        <ul class="center hide-on-med-and-down" id="nv">
            <li><a href="./" class="ams hide-on-med-and-down"> AMA </a></li>
            <li><div class="grs"></></li>
            <li><a href="./"><i class="material-icons"></i>&nbsp; Beranda</a></li>
            <?php
                if($_SESSION['admin'] == 1 || $_SESSION['admin'] == 3){ ?>
            <li><a class="dropdown-button" href="#!" data-activates="transaksi">Tata Naskah & Kearsipan <i class="material-icons md-18">arrow_drop_down</i></a></li>
                <ul id='transaksi' class='dropdown-content'>
                    <li><a href="?page=tsm">Data Klasifikasi</a></li>
                    <li><a href="?page=tsk">Pedoman</a></li>
    
                </ul>
            <?php
                }
            ?>
           <li><a class="dropdown-button" href="#!" data-activates="agenda">Galeri <i class="material-icons md-18">arrow_drop_down</i></a></li>
                <ul id='agenda' class='dropdown-content'>
                    <li><a href="?page=tf"> Tambah </a></li>
                    <li><a href="?page=gf"> Tampil </a></li>
                </ul>
            
            <?php
                if($_SESSION['admin'] == 1){ ?>
            <li><a class="dropdown-button" href="#!" data-activates="pengaturan">Pengaturan <i class="material-icons md-18">arrow_drop_down</i></a></li>
                <ul id='pengaturan' class='dropdown-content'>
    
                    <li><a href="?page=sett&sub=usr">User</a></li>
                    
                </ul>
            <?php
                }
            ?>
            <?php
                if($_SESSION['admin'] == 2){ ?>
            <li><a class="dropdown-button" href="#!" data-activates="pengaturan">Pengaturan <i class="material-icons md-18">arrow_drop_down</i></a></li>
                <ul id='pengaturan' class='dropdown-content'>
                    
                    <li><a href="?page=sett&sub=usr">User</a></li>
                </ul>
            <?php
                }
            ?>
            <li class="right" style="margin-right: 10px;"><a class="dropdown-button" href="#!" data-activates="logout"><i class="material-icons">account_circle</i> <?php echo $_SESSION['nama']; ?><i class="material-icons md-18">arrow_drop_down</i></a></li>
                <ul id='logout' class='dropdown-content'>
                    <li><a href="?page=pro">Profil</a></li>
                    <li><a href="?page=pro&sub=pass">Ubah Password</a></li>
                    <li class="divider"></li>
                    <li><a href="logout.php"><i class="material-icons">settings_power</i> Logout</a></li>
                </ul>
        </ul>
        <!-- Menu on large screen END -->
        <a href="#" data-activates="slide-out" class="button-collapse" id="menu"><i class="material-icons">menu</i></a>
    </div>
</nav>

<?php
    } else {
        header("Location: ../");
        die();
    }
?>
