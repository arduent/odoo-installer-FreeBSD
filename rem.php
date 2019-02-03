<?php
//remove all packages
//pkg info > rem.lst
$t=file('rem.lst');
foreach ($t as $v)
{
	$x=explode(" ",$v);
	$pkg = array_shift($x);
	echo $pkg."\n";
	$t=`pkg remove -y $pkg`;
	echo $t."\n\n";
	
}
