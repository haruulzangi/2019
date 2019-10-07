<?php

if($_SERVER['REQUEST_METHOD']=='POST' && isset($_POST['wish']) && !empty($_POST['wish']) ){
    $file_name = 'hz_wishe_'.substr(md5(uniqid(rand(), true)),10);
    $fh = fopen("./wishes/$file_name", 'w+');
    if($fh == False){
        die('File write permission is required');
    }
    fwrite($fh, 'wish '."\n".addslashes($_POST['wish']));
    fclose($fh);
}
?>
<!DOCTYPE html>
<html>
<!-- Xuseltiig burhan 10 sec dutamd unshina. -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Wishing Star</title>
</head>
<body bgcolor="black" style="background-image:url('./star.jpg'); background-repeat: no-repeat">
    <form method="post">
	<table style="width: 1000px;table-layout: fixed">
	   <tr style="vertical-align: top">
		<th rowspan="100" width="600px">
		<th>
            <tr>
		<td colspan="2">
		   <br><br><br><br><br><Br><br><br>
                    <label for="wish" style="color:white"> Make a wish:</label>
                    <textarea  name="wish" style="width: 100%; height: 200px"/></textarea>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <input type="submit" value="go" />
                </td>
	    </tr>
	    <tr>
		<td colspan="2" style="text-align: left; color:white">
			<!-- tanii husel  -->
            <?php if (isset($_POST['wish'])) {
                echo addslashes($_POST['wish']);
            }
			?>
		</td>
	    </tr>
	</table>
   </form>

<br>


</body>
</html>
