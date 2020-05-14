<?php

echo shell_exec('echo $USER');
echo 15+5;
$output = shell_exec('cat /var/attendance.txt 2>&1');

echo "<pre>$output</pre>";

?>
