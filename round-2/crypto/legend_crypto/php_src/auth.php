<?php
  define('SECRET', '25fab666');
  define('FLAG', 'HZ19{Hash_3xt3nter_attacK_really@@}');

  $accts = array(
    'administrator' => 'bmLhVHjius',
    'guest' => 'guest',
  );

  function is_valid($username, $password)
  {
    global $accts;

    return array_key_exists($username, $accts) && $accts[$username] === $password;
  }
?>
