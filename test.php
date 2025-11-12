
  <?php   
                 include 'config.php';
                  $sql = "select * FROM complaints,category where complaints.Category = category.Description AND complaints.cat_id ='2'";
                  $result = mysqli_query($conn,$sql);
                  $num = mysqli_num_rows($result);

                  while($row = mysqli_fetch_array($result)){
                  echo $row['Help'];
                  }
                  
   ?>


<!-- select HELP FROM complaints,category where complaints.Category = category.Description; -->