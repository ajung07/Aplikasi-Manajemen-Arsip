<?php
    //cek session
    if(!empty($_SESSION['admin'])){
        $query = mysqli_query($config, "SELECT * FROM tbl_instansi");
        while($data = mysqli_fetch_array($query)){
            echo '
                <div class="col s12" id="header-instansi">
                    <div class="card yellow blue-text">
                        <div class="card-content">';
                            if(!empty($data['logo'])){
                                echo '<div class="circle left"><img class="logo" src="./upload/'.$data['logo'].'"/></div>';
                            } else {
                                echo '<div class="circle left"><img class="logo" src="./asset/img/logo.png"/></div>';
                            }

                            if(!empty($data['nama'])){
                                echo '<h5 class="ins"> <b> UNIT KEARSIPAN KANTOR CABANG SEMARANG MAJAPAHIT </h5>';
                                
                            } else {
                                echo '<h5 class="ins">'.$data['nama'].'</h5>';
                            }

                            if(!empty($data['alamat'])){
                                 echo '<p class="almt">Jl. Brigjen Sudiarto No. 4, Plamongan Sari, Pedurungan, Kota Semarang, Jawa Tengah 50192</p>';
                                
                            } else {
                               echo '<p class="almt">'.$data['alamat'].'</p>';
                            }

                            if(!empty($data['nama'])){
                                 echo '<p class="almt">Telepon: (024) 76747997</p>';
                                
                            } else {
                                echo '<h5 class="ins">'.$data['nama'].'</h5>';
                            }

                            echo '
                        </div>
                    </div>
                </div>';
        }
    } else {
        header("Location: ../");
        die();
    }
?>
