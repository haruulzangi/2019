<?php
header('Content-Type:text/plain');
if (stripos($_SERVER['HTTP_USER_AGENT'], 'googlebot') !== false) {	
?>User-agent:  <?php echo $_SERVER['HTTP_USER_AGENT']; ?>



TODAY'S INFOMATION: aHoxOXtMMG5nX0wxdmVfdGgzX3IwYk90c30=
<?php
}
else {
?>User-agent: <?php echo $_SERVER['HTTP_USER_AGENT']; ?>



WHATS UP HUMAN!
YOU ARE NOT A ROBOT! GO AWAY!
<?php
}
?>
