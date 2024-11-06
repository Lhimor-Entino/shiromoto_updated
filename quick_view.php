<?php

include 'components/connect.php';

session_start();

if (isset($_SESSION['user_id'])) {
   $user_id = $_SESSION['user_id'];
} else {
   $user_id = '';
};

include 'components/wishlist_cart.php';

?>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Quick view</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
   <link rel="stylesheet" href="css/style.css">

</head>

<body>

   <?php include 'components/user_header.php'; ?>

   <section class="quick-view">

      <h1 class="heading">Quick view</h1>

      <?php
      $pid = $_GET['pid'];
      $statistics = $conn->prepare("INSERT INTO `statistics_tbl` (product_id, type) VALUES(?,?)");
      $statistics->execute([$pid, 0]);

      $select_products = $conn->prepare("SELECT * FROM `products` WHERE id = ?");
      $select_products->execute([$pid]);
      if ($select_products->rowCount() > 0) {
         while ($fetch_product = $select_products->fetch(PDO::FETCH_ASSOC)) {
      ?>
            <form action="" method="post" class="box">
               <input type="hidden" name="pid" value="<?= $fetch_product['id']; ?>">
               <input type="hidden" name="name" value="<?= $fetch_product['name']; ?>">
               <input type="hidden" name="price" value="<?= $fetch_product['price']; ?>">
               <input type="hidden" name="image" value="<?= $fetch_product['image_01']; ?>">
               <div class="row">
                  <div class="image-container">
                     <div class="main-image">
                        <img src="uploaded_img/<?= $fetch_product['image_01']; ?>" alt="">
                     </div>
                     <div class="sub-image">
                        <img src="uploaded_img/<?= $fetch_product['image_01']; ?>" alt="">
                        <img src="uploaded_img/<?= $fetch_product['image_02']; ?>" alt="">
                        <img src="uploaded_img/<?= $fetch_product['image_03']; ?>" alt="">
                     </div>
                  </div>
                  <div class="content">
                     <div class="name"><?= $fetch_product['name']; ?></div>
                     <div class="flex">
                        <div class="price"><span>PHP. </span><?= $fetch_product['price']; ?></div>
                        <input type="number" name="qty" class="qty" min="1" max="99" onkeypress="if(this.value.length == 2) return false;" value="1">
                     </div>

                     <div class="details"><?= $fetch_product['details']; ?></div>
                     <div class="flex-btn">
                        <input type="submit" value="add to cart" class="btn" name="add_to_cart">
                        <input class="option-btn" type="submit" name="add_to_wishlist" value="add to wishlist">
                     </div>
                  </div>
               </div>
               <div class="container mt-5">
                  <div class="card">
                     <div class="card-header">
                        <h5 class="card-title"><?= $fetch_product['name']; ?> Specifications</h5>
                     </div>
                     <div class="card-body">
                        <h6 class="card-subtitle mb-2 text-muted">Model: <?= $fetch_product['models']; ?></h6>
                        <ul class="list-group">
                        <li class="list-group-item">
                           <strong>Body:</strong>
                        
                              <div class="ms-3 mt-2 ">
                                 <strong class="me-2"> Dimensions: </strong> <?= $fetch_product['dimensions']; ?><br>
                                 <strong class="me-2"> Weight: </strong> <?= $fetch_product['weight']; ?><br>
                                 <strong class="me-2"> Build: </strong> <?= $fetch_product['build']; ?><br>
                                 <strong class="me-2"> Sim: </strong> <?= $fetch_product['sim']; ?><br>
                              </div>
                           </li>
                           <li class="list-group-item">
                           <strong>Display:</strong>
                        
                              <div class="ms-3 mt-2 ">
                                 <strong class="me-2"> Type: </strong> <?= $fetch_product['display_type']; ?><br>
                                 <strong class="me-2"> Size: </strong> <?= $fetch_product['size']; ?><br>
                                 <strong class="me-2"> Resolution: </strong> <?= $fetch_product['resolution']; ?><br>
                                 <strong class="me-2"> Protection: </strong> <?= $fetch_product['protection']; ?><br>
                              </div>
                           </li>
                           <li class="list-group-item">
                           <strong>Platform:</strong>
                        
                              <div class="ms-3 mt-2 ">
                                 <strong class="me-2"> OS: </strong> <?= $fetch_product['os']; ?><br>
                                 <strong class="me-2"> Chipset: </strong> <?= $fetch_product['chipset']; ?><br>
                                 <strong class="me-2"> CPU: </strong> <?= $fetch_product['cpu']; ?><br>
                                 <strong class="me-2"> GPU: </strong> <?= $fetch_product['gpu']; ?><br>
                              </div>
                           </li>
                           <li class="list-group-item">
                           <strong>Memory:</strong>
                        
                              <div class="ms-3 mt-2 ">
                                 <strong class="me-2"> Card Slot: </strong> <?= $fetch_product['mem_card_slot']; ?><br>
                                 <strong class="me-2"> Internal: </strong> <?= $fetch_product['mem_internal']; ?><br>
                             
                              </div>
                           </li>
                           <li class="list-group-item">
                           <strong>Main Camera:</strong>
                        
                              <div class="ms-3 mt-2 ">
                                 <strong class="me-2">Modules: </strong> <?= $fetch_product['mc_modules']; ?><br>
                                 <strong class="me-2"> Features: </strong> <?= $fetch_product['mc_features']; ?><br>
                                 <strong class="me-2"> Video: </strong> <?= $fetch_product['mc_video']; ?><br>
                             
                              </div>
                           </li>
                           <li class="list-group-item">
                           <strong>Selfie Camera:</strong>
                        
                              <div class="ms-3 mt-2 ">
                                 <strong class="me-2">Modules: </strong> <?= $fetch_product['sc_modules']; ?><br>
                                 <strong class="me-2"> Features: </strong> <?= $fetch_product['sc_features']; ?><br>
                                 <strong class="me-2"> Video: </strong> <?= $fetch_product['sc_video']; ?><br>
                             
                              </div>
                           </li>
                           <li class="list-group-item">
                           <strong>Sound :</strong>
                        
                              <div class="ms-3 mt-2 ">
                                 <strong class="me-2">Loud Speaker: </strong> <?= $fetch_product['loudspeaker']; ?><br>
                                 <strong class="me-2">Sound Jack: </strong> <?= $fetch_product['sound_jack']; ?><br>
                                 
                              </div>
                           </li>
                           <li class="list-group-item">
                           <strong>Comms :</strong>
                        
                              <div class="ms-3 mt-2 ">
                                 <strong class="me-2">WLAN: </strong> <?= $fetch_product['wlan']; ?><br>
                                 <strong class="me-2">Bluetooth: </strong> <?= $fetch_product['bluetooth']; ?><br>
                                 <strong class="me-2">Positioning: </strong> <?= $fetch_product['positioning']; ?><br>
                                 <strong class="me-2">NFC: </strong> <?= $fetch_product['nfc']; ?><br>
                                 <strong class="me-2">Infrared Port: </strong> <?= $fetch_product['infrared_port']; ?><br>
                                 <strong class="me-2">Radio: </strong> <?= $fetch_product['radio']; ?><br>
                                 <strong class="me-2">USB: </strong> <?= $fetch_product['usb']; ?><br>
                              </div>
                           </li>
                           <li class="list-group-item">
                           <strong>Features:</strong>
                        
                              <div class="ms-3 mt-2 ">
                                 <strong class="me-2">Sensors: </strong> <?= $fetch_product['sensors']; ?><br>
                              </div>
                           </li>
                           <li class="list-group-item">
                           <strong>Battery:</strong>
                        
                              <div class="ms-3 mt-2 ">
                                 <strong class="me-2">Type: </strong> <?= $fetch_product['battery_type']; ?><br>
                                 <strong class="me-2">Charging: </strong> <?= $fetch_product['charging']; ?><br>
                              </div>
                           </li>
                        </ul>
                     </div>
                     <div class="card-footer text-muted">
                        Release Date: <?= $fetch_product['status']; ?>
                     </div>
                  </div>
               </div>

            </form>


      <?php
         }
      } else {
         echo '<p class="empty">no products added yet!</p>';
      }
      ?>

   </section>













   <?php include 'components/footer.php'; ?>

   <script src="js/script.js"></script>

</body>

</html>