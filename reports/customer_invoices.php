<?php

/*
	customer_invoices.php

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
CheckAdminGroup3();
CheckSession();

$ArrayValue = CheckArrayValue($_REQUEST);

foreach ($ArrayValue as $key => $val) {
    $$key = $val;
    $smarty->assign("$key", $val);
}

if (!isset($page) || !is_numeric($page) || $page <= 0) {
    $page = 1;
}

if (!isset($Sort) || $Sort !== 'ASC' && $Sort !== 'DESC') {
    $Sort = "";
    $smarty->assign("Sort", "$Sort");
}

if (empty($Order) || $Order !== 'I.INVOICEID' && $Order !== 'A.LASTNAME,A.FIRSTNAME,A.COMPANY' && $Order !== 'I.INVOICE_DATE' && $Order !== 'I.TOTAL_AMOUNT' && $Order !== 'I.TOTAL_AMOUNT-I.SUM_PAID') {
    $Order = "I.INVOICE_DATE DESC";
    $Sort = "";
    $smarty->assign("Order", "$Order");
    $smarty->assign("Sort", "$Sort");
}

if (isset($infoID) && $infoID == '10') {
    $Searchstring = "&amp;CustomerID=$CustomerID&amp;Prefix1=$Prefix1&amp;Title11=$Title11&amp;Firstname1=$Firstname1&amp;Initials1=$Initials1&amp;Lastname1=$Lastname1&amp;Phonehome1=$Phonehome1&amp;Salutation1=$Salutation1&amp;Mobile1=$Mobile1&amp;Address1=$Address1&amp;Fax1=$Fax1&amp;Stateprov1=$Stateprov1&amp;Email1=$Email1&amp;Postalcode1=$Postalcode1&amp;City1=$City1&amp;Url1=$Url1&amp;Company1=$Company1&amp;Phonework1=$Phonework1&amp;Department1=$Department1&amp;Phoneoffi1=$Phoneoffi1&amp;Position11=$Position11&amp;Phoneothe1=$Phoneothe1&amp;Pager1=$Pager1&amp;Note1=$Note1&amp;Altfield11=$AltField11&amp;Altfield21=$AltField21&amp;Altfield31=$AltField31&amp;Altfield41=$AltField41&amp;Country1=$Country1&amp;Date_From1=$Date_From1&amp;Date_Till1=$Date_Till1&amp;Birthday1=$Birthday1&amp;Category1=$Category1&amp;MethodOfPayment1=$MethodOfPayment1&amp;PrintName1=$PrintName1";
    $smarty->assign("Searchstring", "$Searchstring");
}

$smarty->assign("Title", "$a[reports] - $a[customer_sales]");
$smarty->assign("SearchResult", "$a[customer_sales]");
$smarty->assign("First_Name", "$a[firstname]");
$smarty->assign("Last_Name", "$a[lastname]");
$smarty->assign("Company_Name", "$a[company]");
$smarty->assign("Customer_No", "$a[customer_no]");
$smarty->assign("Customer", "$a[customer]");
$smarty->assign("EntryChanged", "$a[entry_changed]");
$smarty->assign("EntryCanceled", "$a[entry_canceled]");
$smarty->assign("NewEntry", "$a[new_entry]");
$smarty->assign("Email_OK", "$a[email_ok]");
$smarty->assign("Email_Error", "$a[email_error]");
$smarty->assign("Invoice_No", "$a[invoice_number]");
$smarty->assign("Delivery_Note_No", "$a[delivery_note_number]");
$smarty->assign("Invoice_Amount", "$a[invoice_amount]");
$smarty->assign("Invoice_Transaction", "$a[invoice_transaction]");
$smarty->assign("Open_Account", "$a[open_account]");
$smarty->assign("Print_Invoice", "$a[print_invoice]");
$smarty->assign("Print_Delivery_Note", "$a[print_delivery_note]");
$smarty->assign("Date_From", "$a[date_from]");
$smarty->assign("Date_Till", "$a[date_till]");

// Database connection
//
DBConnect();

// Get data from company_settings.inc.php
//
$smarty->assign("Invoice_Currency", $CompanyCurrency);

$intCursor = ($page - 1) * $EntrysPerPage;

$DateFrom = German_Mysql_Date($DateFrom);
$DateTill = German_Mysql_Date($DateTill);

if (isset($Canceled) && $Canceled == 1) {
    $query = $db->Execute("SELECT A.MYID, A.FIRSTNAME, A.LASTNAME, A.COMPANY, I.CREATEDBY, I.INVOICEID, I.MYID, DATE_FORMAT(I.INVOICE_DATE,'%d.%m.%Y') AS INVOICE_DATE, I.TOTAL_AMOUNT, I.PAID, I.SUM_PAID, I.CANCELED FROM {$TBLName}invoice AS I, {$TBLName}addressbook AS A WHERE I.CANCELED=1 AND A.MYID=$myID AND I.MYID=$myID AND I.INVOICE_DATE >= '$DateFrom' AND I.INVOICE_DATE <= '$DateTill' ORDER BY $Order $Sort LIMIT $intCursor, $EntrysPerPage");
} else if (isset($Canceled) && $Canceled == 3) {
    $query = $db->Execute("SELECT A.MYID, A.FIRSTNAME, A.LASTNAME, A.COMPANY, I.CREATEDBY, I.INVOICEID, I.MYID, DATE_FORMAT(I.INVOICE_DATE,'%d.%m.%Y') AS INVOICE_DATE, I.TOTAL_AMOUNT, I.PAID, I.SUM_PAID, I.CANCELED FROM {$TBLName}invoice AS I, {$TBLName}addressbook AS A WHERE A.MYID=$myID AND I.MYID=$myID AND I.INVOICE_DATE >= '$DateFrom' AND I.INVOICE_DATE <= '$DateTill' ORDER BY $Order $Sort LIMIT $intCursor, $EntrysPerPage");
} else {
    $query = $db->Execute("SELECT A.MYID, A.FIRSTNAME, A.LASTNAME, A.COMPANY, I.CREATEDBY, I.INVOICEID, I.MYID, DATE_FORMAT(I.INVOICE_DATE,'%d.%m.%Y') AS INVOICE_DATE, I.TOTAL_AMOUNT, I.PAID, I.SUM_PAID, I.CANCELED FROM {$TBLName}invoice AS I, {$TBLName}addressbook AS A WHERE I.CANCELED=2 AND A.MYID=$myID AND I.MYID=$myID AND I.INVOICE_DATE >= '$DateFrom' AND I.INVOICE_DATE <= '$DateTill' ORDER BY $Order $Sort LIMIT $intCursor, $EntrysPerPage");
}

// If an error has occurred, display the error message
//
if (!$query)
    print($db->ErrorMsg());
else
    // Count PageRows
    //
    $pagenumrows = $query->RecordCount();

// Count MaxRows
//

if (isset($Canceled) && $Canceled == 1) {
    $query1 = $db->Execute("SELECT A.MYID, A.FIRSTNAME, A.LASTNAME, A.COMPANY, I.INVOICEID, I.MYID, I.TOTAL_AMOUNT, I.SUM_PAID FROM {$TBLName}addressbook AS A, {$TBLName}invoice AS I WHERE I.CANCELED=1 AND A.MYID=$myID AND I.MYID=$myID AND I.INVOICE_DATE >= '$DateFrom' AND I.INVOICE_DATE <= '$DateTill'");
} else if (isset($Canceled) && $Canceled == 3) {
    $query1 = $db->Execute("SELECT A.MYID, A.FIRSTNAME, A.LASTNAME, A.COMPANY, I.INVOICEID, I.MYID, I.TOTAL_AMOUNT, I.SUM_PAID FROM {$TBLName}addressbook AS A, {$TBLName}invoice AS I WHERE A.MYID=$myID AND I.MYID=$myID AND I.INVOICE_DATE >= '$DateFrom' AND I.INVOICE_DATE <= '$DateTill'");
} else {
    $query1 = $db->Execute("SELECT A.MYID, A.FIRSTNAME, A.LASTNAME, A.COMPANY, I.INVOICEID, I.MYID, I.TOTAL_AMOUNT, I.SUM_PAID FROM {$TBLName}addressbook AS A, {$TBLName}invoice AS I WHERE I.CANCELED=2 AND A.MYID=$myID AND I.MYID=$myID AND I.INVOICE_DATE >= '$DateFrom' AND I.INVOICE_DATE <= '$DateTill'");
}

if (!$query1)
    print($db->ErrorMsg());
else
    $numrows = $query1->RecordCount();

$Total_Amount = 0;
$Sum_Paid = 0;

foreach ($query1 as $result1) {
    // Calculate total amount by searchresult
    //
    $Total_Amount += $result1['TOTAL_AMOUNT'];
    $smarty->assign("TOTAL_AMOUNT", $Total_Amount);

    // Calculate total open amount by searchresult
    //
    $Sum_Paid += $result1['SUM_PAID'];
    $smarty->assign("OPEN_ACCOUNT", $Total_Amount - $Sum_Paid);
}

// Save MaxPages
//
$intPages = ceil($numrows / $EntrysPerPage);

$TotalPage = 0;

// Save all entrys in $InvoiceData array
//
foreach ($query as $result) {
    $InvoiceData[] = $result;

    // Calculate total amount per page
    //
    $TotalPage += $result['TOTAL_AMOUNT'];
    $smarty->assign("TOTAL_PAGE", $TotalPage);
}

if (isset($InvoiceData))
    $smarty->assign('InvoiceData', $InvoiceData);

$smarty->assign("PageRows", "$pagenumrows");
$smarty->assign("MaxRows", "$numrows");

// Display pager only if $numrows > $EntrysPerPage ( lines per page )
// from settings menu
//
if ($numrows > $EntrysPerPage) {
    $smarty->assign('CurrentPage', "$page");
    $smarty->assign('MaxPages', "$intPages");
    $smarty->assign('AddCurrentPage', "page=$page&amp;");

    // If we are not on first page then display
    // first page, previous page link
    //
    if ($page > 1) {
        $Page = $page - 1;
        $smarty->assign('PrevPage', "$Page");
    }

    // If we are not on the last page then display
    // next page, last page link
    //
    if ($page < $intPages) {
        $Page = $page + 1;
        $smarty->assign('NextPage', "$Page");
    }
}

$smarty->display('reports/customer_invoices.tpl');

?>
