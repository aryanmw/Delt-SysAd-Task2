<?php

$output = shell_exec('cat /var/attendance.txt 2>&1');
echo "<pre>$output</pre>";

?>
