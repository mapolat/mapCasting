<?php
/*
	logout.php

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

require_once("../include/mapcasting.inc.php");

// Database connection
//
DBConnect();

$query2 = "INSERT INTO {$TBLName}syslog (SYSLOGID, CREATED, DESCRIPTION, CREATEDBY, USERGROUP1, USERGROUP2)";
$query2 .= "VALUES(NULL, '$CurrentDateTime', 'Session closed for user $_SESSION[Username] (uid=$_SESSION[UserID])','admin','1','2')";
if ($db->Execute($query2) === false) {
    die($db->ErrorMsg());
}

Logout();
@session_destroy();
@session_start();
$_SESSION['logoutid'] = "1";

Header("Location: $web/login/login.php?$sessname=$sessid");
?>
