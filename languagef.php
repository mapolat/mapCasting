<?php

/*
	languagef.php

	mapCasting - is easy-to-use Web-based multilingual casting software.
	Copyright (C) 2012 M. Ayhan POLAT

	This program is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/

require_once("include/mapcasting.inc.php");

// Delete the current language
//
unset($_SESSION['Language']);

CheckUser();
CheckSession();

if (isset($_POST['language'])) {
    $Language = htmlspecialchars($_POST['language'], ENT_QUOTES, $_SESSION['Charset']);
}

// Database connection
//
DBConnect();

// Update language
//
$query = $db->Execute("UPDATE {$TBLName}user SET LANGUAGE='$Language' WHERE DECODE(USERNAME,'$pkey')='$_SESSION[Username]'");
$_SESSION['Language'] = $Language;

// Go back to the configuration site
//
Header("Location: $web/configuration.php?$sessname=$sessid");

?>
