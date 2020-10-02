<?php 




if(!isset($_COOKIE['PHPSESSID'])) {
    setcookie('PHPSESSID', md5(rand(1,10000).time()), time() + (86400 * 30), "/"); // 86400 = 1 day
}
if (isset($_COOKIE['PHPSESSID'])){
	$cook= $_COOKIE['PHPSESSID'];
	if (!file_exists("uploads/".$cook."/")){
	      mkdir("uploads/".$cook); 
	}

}



?>

<!DOCTYPE html>

<html>
<head>
  <title>Space Cargo</title>
<style>
form {
	 position: absolute;
	  width: 400px;
	  height: 200px;
	  z-index: 15;
	  top: 30%;
	  left: 0;
	  padding-left:30px;
	  color: black;
	  background-color:#ffec64;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #ffaa22;
	display:inline-block;
}


</style>
</head>
<body style="background-image:url(cargo.jpg); background-repeat: no-repeat;   background-attachment: fixed;   background-position: center; background-color: black;">






<div style='form' align="left">
  <form enctype="multipart/form-data" action="index.php" method="POST">
    <h1>Cargo loader</h1>
    <input type="file" name="uploaded_file"></input><br />
    <br>
    <input  type="submit" value="Upload"></input><br><br>
<?PHP
  if(!empty($_FILES['uploaded_file']))
  {  //echo $_FILES['uploaded_file']['type'];
   if($_FILES['uploaded_file']['type']=='image/jpeg' ){
	    $path = "uploads/";
	    $path = $path .$cook.'/'. basename( $_FILES['uploaded_file']['name']);
	    if( pathinfo($path)['extension']!='php' ){
                    if (file_exists($path)) {
			  echo "Sorry, $path already exists.";
                    }else {

    		          if(move_uploaded_file($_FILES['uploaded_file']['tmp_name'], $path)) {
      			           echo "Таны файл  <b>".$path.'</b> зам дээр хуулагдлаа.';
    		          } else{
        		           echo "Файлыг хуулахад алдаа гарлаа, дахин оролдоно уу!";
    		          }
                    }
            }else { 
                    echo 'Алдаа: .php өргөтгөлтэй файл хуулж болохгүй!  өөр файл оруулна уу ;)';
                  }
  } else { 
            echo 'Алдаа: зөвхөн JPEG өргөтгөл зөвшөөрнө.';
  }
} 
?>
 </form>
</div>
</body>
</html>

