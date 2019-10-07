<?php
        $serverName = 'cell18_mysql';
        $username = 'root';
        $password = 's0mer@nd0mStr1ng';
        #$client_agent = $_SERVER['HTTP_USER_AGENT'];
        $dbName = "Cell18";



if(!isset($_COOKIE['identity'])) {

setcookie('identity', base64_encode('human'), time() + (86400 * 30), "/"); // 86400 = 1 day
}






        $conn = mysqli_connect($serverName,$username,$password, $dbName);
        $data = '<h3 class="l1-txt0 txt-center p-b-25">access denied</h3>';



        if ( $conn ) {
		if (isset($_COOKIE['identity'])){
                $client_agent=base64_decode($_COOKIE['identity']);
                $query = "SELECT * FROM Cell_guards where guard_type='" . $client_agent . "'";
                $result = mysqli_query($conn, $query);
                if (mysqli_num_rows($result)>0) {
                        $data = '<h3 class="l1-txt1 txt-center p-b-25"> access granted </h3> <p class="m2-txt1 txt-center p-b-48">seems like he already escaped... but there is something on the <i>table</i>  </p>';
;
        	         }
	        }
         }

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Prison Cell</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>

	<!--  -->
	<div class="simpleslide100">
		<div class="simpleslide100-item bg-img1" style="background-image: url('images/prison.jpg');"></div>
	</div>

	<div class="size1 overlay1">
		<!--  -->
		<div class="size1 flex-col-c-m p-l-15 p-r-15 p-t-50 p-b-50">
				<?php echo $data;  ?>
		</div>
	</div>




</body>
</html>
