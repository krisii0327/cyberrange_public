<?php
	$php_test_variable = "I'm a php script";

?>
<!DOCTYPE html>
<html>
<body>

<h1>Hello CyberRange!</h1>
<p>This a simple html file inside a little php script for test.</p>


<p>Simple variable: <span style="font-weight:bold;">
	<?=$php_test_variable;?>
</p>
<p>Simple variable: <span style="font-weight:bold;">
	<?php echo $php_test_variable; ?>
</p>
<p>Simple variable: <span style="font-weight:bold;">
	<?php print $php_test_variable; ?>
</p>

<?php
	phpinfo();
?>

</body>
</html>