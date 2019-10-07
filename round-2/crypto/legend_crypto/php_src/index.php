<?php
  require_once('./auth.php');
  function do_hash($data) {
    $hash = md5($data);
    return $hash;
  }

  function create_hmac($data) {
    return do_hash(SECRET . $data);
  }

  if(isset($_GET['action']) && $_GET['action'] === 'logout') {
    setcookie('auth', '');
    header('Location: index.php');
    header('Content-Type: text/html; charset=utf-8');
  }

  if(isset($_POST['username'])) {
    # Check cookie
    if(is_valid($_POST['username'], $_POST['password'])) {
      # uusgeh cookie
      date_default_timezone_set('Asia/Ulaanbaatar');
      $cookie = 'username=' . $_POST['username'] . '&';
      $cookie .= 'date=' . date(DATE_ISO8601) . '&';
      $cookie .= 'secret_length=' . strlen(SECRET) . '&';

      # Login hiih
      $cookie = create_hmac($cookie) . '|' . $cookie;
      setcookie('auth', $cookie);
      print "<h1>Амжилттай!</h1>\n";
    } else {
      print "<h1>Нууц үг буруу!</h1>\n";
    }
    print "<p> <a href='index.php'>Үргэлжлүүлэх</a></p>\n";
    exit(0);
  }

  if(!isset($_COOKIE['auth'])) {
    require_once('./login_form.php');
    exit(0);
  }

  list($hmac, $cookie) = explode('|', $_COOKIE['auth'], 2);
  if(create_hmac($cookie) !== $hmac) {
    setcookie('auth', '');
    print "<p>Cookie алдаатай байна!</p>\n";
    print "<p> <a href='index.php'></a> Дахиад оролдох уу!</p>\n";
    exit();
  }

  $pairs = explode('&', $cookie);
  $args = array();
  foreach($pairs as $pair) {
    if(!strpos($pair, '='))
      continue;

    list($name, $value) = explode('=', $pair, 2);
    $args[$name] = $value;
  }
  $username = $args['username'];

  print "<h1>Тавтай морил, $username!</h1>\n";
  if($username == 'administrator') {
    print "<p>Баяр хүргэе, Та бол администратор! Флаг:</p>\n";
    print "<p>" . FLAG . "</p>\n";
  } else {
    print "<p>Guest хэрэглэгчээр логин хийсэн байна, 'administrator' хэрэглэгчээр логин хийчихвэл яаж байна. :(</p>\n";
  }
  print "<p><a href='/index.php?action=logout'>Log out</a></p>\n";
?>
