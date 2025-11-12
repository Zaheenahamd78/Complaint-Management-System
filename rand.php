<?php
 include 'config.php';
    
 $n = rand(1,10);
 echo $n;
    
    

    $sql = "SELECT * FROM complaints where C_Id= '$n'";
    $result = mysqli_query($conn,$sql);
    $num = mysqli_num_rows($result);

    while($row = mysqli_fetch_array($result)){
?>
        <tr>
            
            <td scope="row" class="id"><?php echo $row['C_Id'] ?></td>
            <td scope="row" class="tab"><?php echo $row['Mob'] ?></td>
            <td scope="row" class="tab"><?php echo $row['Category'] ?></td>
            <td scope="row" class="tab"><?php echo $row['Location'] ?></td>
            <td scope="row" class="tab"><?php echo $row['Priority'] ?></td>
            <td scope="row" class="tab"><?php echo $row['Description'] ?></td>
            <td scope="row" class="tab"><?php echo $row['Reg_time'] ?></td>
     <?php
        }
?>
            <td scope="row" class="tab">
            <?php   
                //  include 'config.php';
                  $sql = "select * FROM complaints,category where complaints.Category = category.Description AND complaints.cat_id ='2'";
                  $result = mysqli_query($conn,$sql);
                  $num = mysqli_num_rows($result);

                  while($row = mysqli_fetch_array($result)){
                  echo $row['Help'];
                  }
                  
                ?>

            </td>

            <td scope="row" class="tab"><?php echo $row['status'] ?></td>
            <!-- <td class="tab"><a href="resolved.php?id=<?php //echo $row['C_Id'];?>"><button class='ress' >Resolve</button></a></td> This one is for admins -->
        </tr>
<!-- <?php	
    
?> -->

select HELP FROM complaints,category where complaints.Category = category.Description;