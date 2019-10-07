<!DOCTYPE HTML>
<?php
  require("flag.php");

  if (isset($_GET['source'])) {
    highlight_file(__FILE__);
    die();
  }

  if (isset($_GET['yoda_words'])) {

    $chewbacca = $_GET['yoda_words'];
    $palpatine = 'skywalker';
    $kenobi = preg_replace(
	    	"/$palpatine/", '', $chewbacca);

    if ($kenobi === $palpatine) {
      Master_Yoda_Flag();
    }
  }
?>

<html>
  <head>
    <title>Yoda Words</title>
  </head>
  <body>
    <h1>No! Try not! Do or do not, there is no try </h1>
    <p>Please find the flag of Yoda<code>Master_Yoda_Flag()</code></p>
    <a target="_blank" href="?source">View the source</a>

  </body>
</html>
