<?php
/*
	sustart.php

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
require_once("../include/smarty.inc.php");
CheckUser();
CheckSession();

if (isset($_SESSION['Username']) && $_SESSION['Username'] === $root || !isset($_SESSION['IPAddress'])) {
    Logout();
    @session_destroy();
    @session_start();
    $_SESSION['logoutid'] = "3";
    Header("Location: $web/login/login.php?$sessname=$sessid");
} else {
    $smarty->assign("Title", "$a[super_user] - $a[login]");
    $smarty->assign("Superuser", "$a[super_user]");
    $smarty->assign("Startpage", "$a[startpage]");
    $smarty->assign("LoginMsg", "$a[login_to] - $a[programname]");
    $smarty->assign("BackMsg", "$a[back]");
    $smarty->assign("AccessDeniedMsg", "$a[no_permission]");
    $smarty->assign("LoginErrMsg", "$a[login_error]");
    $smarty->assign("Password", "$a[password]");
    $smarty->assign("Login", "$a[login]");
    $smarty->assign("Delete", "$a[delete]");
    $smarty->display('login/sustart.tpl');

    unset ($_SESSION['logoutid']);
}
?>
