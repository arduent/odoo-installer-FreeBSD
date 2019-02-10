<?php

$t = '{"daysFromHidingToDeleting": 30,"daysFromUploadingToHiding": null,"fileNamePrefix": "backup/"}';
$d=json_encode($t,true);
print_r($d);
