<?php


if(isset($_GET["DECONNEXION"]) &&$_GET["DECONNEXION"]=="OUI" )
{
	session_destroy();
}
?>