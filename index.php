
<?php $port = '8080';
      header('Location: '
    . ($_SERVER['HTTPS'] ? 'https' : 'http')
    . '://' . $_SERVER['HTTP_HOST'] . ':' . $port  . '/' . 'habpanel' . '/' . '$
    . $_SERVER['REQUEST_URI']);
exit;
?>
