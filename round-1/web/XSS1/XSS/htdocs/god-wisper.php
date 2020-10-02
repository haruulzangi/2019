<?php
if($_COOKIE["PHPSESSID"]=='adm1n-co0k1e'){

$dh = opendir('./wishes');
?>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body><table>
                <?php
                    while($file = readdir($dh)){
                        if($file != "." && $file != "..") {

                            $content = file("./wishes/$file");
                            echo "<tr><td>$content[0]</td>\n";
                            echo "\n";
                            echo "<td>".$content[1]."</td>";
                            echo "</tr>";
							$fh = fopen("./wishes/$file", 'w+'); // for log only
							fwrite($fh, "admin". "\n"." шалгасан.");
							fclose($fh);
                        }
						}
} else { die();}               ?>
</table>
</body>
</html>
