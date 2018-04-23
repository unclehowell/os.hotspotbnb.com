<?php $port = '80';
      header('Location: '
    . ($_SERVER['HTTPS'] ? 'https' : 'http')
    . '://' . $_SERVER['HTTP_HOST'] . ':' . $port  . '/' . 'index.html' . '#'
    . $_SERVER['REQUEST_URI']);
exit;
?>
