<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_koneksidb = "localhost";
$database_koneksidb = "pakarispa";
$username_koneksidb = "root";
$password_koneksidb = "";
$koneksidb = mysql_pconnect($hostname_koneksidb, $username_koneksidb, $password_koneksidb) or trigger_error(mysql_error(),E_USER_ERROR); 
?>