{*
customer_invoices.tpl

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
*}
{include file="header.tpl"}
<body>
{include file="htable.tpl"}
<table border="0" width="100%" cellspacing="0" cellpadding="0" summary="Tabelle 3">
<tbody>
<tr>
<td id="td1_20" width="20%" valign="top">
    {* Menubar start *}
    <table border="0" width="80%" cellspacing="0" cellpadding="0" summary="Tabelle 4">
        <tbody>
        {if $smarty.session.SuperUser and ( $smarty.session.SuperUser eq $Root )}
        <tr>
            <td align="center" class="mapcasting_menu"><a accesskey="L" title="{$Logout}"
                                                           href="../login/suend.php?{$Session}">{$Logout}</a>
            </td>
        </tr>
        {else}
        <tr>
            <td align="center" class="mapcasting_menu"><a accesskey="L" title="{$Logout}"
                                                           href="../login/logout.php?{$Session}">{$Logout}</a>
            </td>
        </tr>
        {/if}
        <tr>
            <td align="left" class="mapcasting_menu"><a accesskey="W" title="{$Startpage}"
                                                         href="../index.php?{$Session}">{$Startpage}</a></td>
        </tr>
        <tr>
            <td align="left" class="mapcasting_menu"><a accesskey="A" title="{$Addressbook}"
                                                         href="../addressbook/list.php?{$Session}">{$Addressbook}</a>
            </td>
        </tr>
        <tr>
            <td align="left" class="mapcasting_menu_sel"><a accesskey="R" title="{$Reports}"
                                                             href="index.php?{$Session}">{$Reports}</a></td>
        </tr>
        <tr>
            <td align="left" class="mapcasting_menu"><a accesskey="S" title="{$Configuration}"
                                                         href="../configuration.php?{$Session}">{$Configuration}</a>
            </td>
        </tr>
        <tr>
            <td align="left" class="mapcasting_menu"><a accesskey="1" title="{$Syslog} - {$List}"
                                                         href="../syslog/list.php?{$Session}">{$Syslog}</a></td>
        </tr>
        {if $smarty.session.Username and ( $smarty.session.Username != $Root )}
        <tr>
            <td align="left" class="mapcasting_menu"><a accesskey="U" title="{$Superuser}"
                                                         href="../login/sustart.php?{$Session}">{$Superuser}</a>
            </td>
        </tr>
        {/if}
        </tbody>
    </table>
</td>
{* Menubar end *}
<td id="td1_2" width="2%"></td>
<td width="78%" valign="top" align="center">
<table width="100%" class="mapcasting_tabelle" border="0" cellspacing="0" cellpadding="2"
       summary="Tabelle 1">
<tbody>
<tr>
    <td valign="middle" align="left" colspan="6">
        [&nbsp;<a title="{$BackMsg} - {$Addressbook}" class="ninfolink"
                  href="../addressbook/info_e.php?page={$page}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;{$Session}#Report">{$BackMsg}</a>&nbsp;]
        [&nbsp;<a title="{$PrintMsg} - {$SearchResult} - {$DateFrom} {$Date_Till} {$DateTill}"
                  class="ninfolink"
                  href="pdf/print_pdf.php?myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Type=Customer_Invoices&amp;Canceled={$Canceled}&amp;Order={$Order}&amp;Sort={$Sort}&amp;{$Session}"
                  target="_blank">{$PrintMsg}</a>&nbsp;]
    </td>
</tr>
<tr>
    <td align="center" colspan="6"><h2>{$Reports} - {$SearchResult}</h2></td>
</tr>
<tr>
    <td align="center" colspan="6">{$DateMsg} {$Date_From} {$DateFrom} {$Date_Till} {$DateTill}</td>
</tr>
<tr>
    <td>&nbsp;</td>
</tr>
{* Display pager if $MaxRows => $Rows ( lines per page ) *}
{if $MaxPages}
<tr>
    <td align="center" colspan="6">
        {if $CurrentPage > 1 }
        <a href="{$smarty.server.PHP_SELF}?page=1&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;{$Session}"><img
                border="0" src="../images/first.png" title="{$FirstPageMsg}" alt="{$FirstPageMsg}"/></a>&nbsp;
        <a href="{$smarty.server.PHP_SELF}?page={$PrevPage}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;{$Session}"><img
                border="0" src="../images/prev.png" title="{$PrevPageMsg}" alt="{$PrevPageMsg}"/></a>&nbsp;
        {/if}
        {$PageMsg}&nbsp;<a title="{$PageMsg} {$CurrentPage} / {$MaxPages}" class="ninfolink"
                           href="{$smarty.server.PHP_SELF}?page={$CurrentPage}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;{$Session}">{$CurrentPage}</a>&nbsp;/&nbsp;{$MaxPages}&nbsp;
        {if $CurrentPage < $MaxPages }
        <a href="{$smarty.server.PHP_SELF}?page={$NextPage}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;{$Session}"><img
                border="0" src="../images/next.png" title="{$NextPageMsg}" alt="{$NextPageMsg}"/></a>&nbsp;
        <a href="{$smarty.server.PHP_SELF}?page={$MaxPages}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;{$Session}"><img
                border="0" src="../images/last.png" title="{$LastPageMsg}" alt="{$LastPageMsg}"/></a>&nbsp;
        {/if}
    </td>
</tr>
{/if}
<tr>
    <td></td>
</tr>
<tr class="mblueTD">
    <td nowrap="nowrap" align="left">&nbsp;{$Invoice_No}
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=I.INVOICEID&amp;Sort=ASC&amp;Canceled={$Canceled}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;{$Session}"><img
                border="0" src="../images/up.png" title="{$SortMsg} {$Invoice_No} ASC"
                alt="{$SortMsg} {$Invoice_No} ASC"/></a>
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=I.INVOICEID&amp;Sort=DESC&amp;Canceled={$Canceled}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;{$Session}"><img
                border="0" src="../images/down.png" title="{$SortMsg} {$Invoice_No} DESC"
                alt="{$SortMsg} {$Invoice_No} DESC"/></a>
    </td>
    <td nowrap="nowrap" align="left">{$Customer}
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=A.LASTNAME,A.FIRSTNAME,A.COMPANY&amp;Sort=ASC&amp;Canceled={$Canceled}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;{$Session}"><img
                border="0" src="../images/up.png" title="{$SortMsg} {$Customer} ASC"
                alt="{$SortMsg} {$Customer} ASC"/></a>
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=A.LASTNAME,A.FIRSTNAME,A.COMPANY&amp;Sort=DESC&amp;Canceled={$Canceled}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;{$Session}"><img
                border="0" src="../images/down.png" title="{$SortMsg} {$Customer} DESC"
                alt="{$SortMsg} {$Customer} DESC"/></a>
    </td>
    <td nowrap="nowrap" align="center">{$DateMsg}
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=I.INVOICE_DATE&amp;Sort=ASC&amp;Canceled={$Canceled}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;{$Session}"><img
                border="0" src="../images/up.png" title="{$SortMsg} {$DateMsg} ASC"
                alt="{$SortMsg} {$DateMsg} ASC"/></a>
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=I.INVOICE_DATE&amp;Sort=DESC&amp;Canceled={$Canceled}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;{$Session}"><img
                border="0" src="../images/down.png" title="{$SortMsg} {$DateMsg} DESC"
                alt="{$SortMsg} {$DateMsg} DESC"/></a>
    </td>
    <td nowrap="nowrap" align="right">{$Invoice_Amount} {$Invoice_Currency}
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=I.TOTAL_AMOUNT&amp;Sort=ASC&amp;Canceled={$Canceled}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;{$Session}"><img
                border="0" src="../images/up.png" title="{$SortMsg} {$Invoice_Amount} ASC"
                alt="{$SortMsg} {$Invoice_Amount} ASC"/></a>
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=I.TOTAL_AMOUNT&amp;Sort=DESC&amp;Canceled={$Canceled}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;{$Session}"><img
                border="0" src="../images/down.png" title="{$SortMsg} {$Invoice_Amount} DESC"
                alt="{$SortMsg} {$Invoice_Amount} DESC"/></a>
    </td>
    <td nowrap="nowrap" align="right">{$Open_Account}
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=I.TOTAL_AMOUNT-I.SUM_PAID&amp;Sort=ASC&amp;Canceled={$Canceled}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;{$Session}"><img
                border="0" src="../images/up.png" title="{$SortMsg} {$Open_Account} ASC"
                alt="{$SortMsg} {$Open_Account} ASC"/></a>
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=I.TOTAL_AMOUNT-I.SUM_PAID&amp;Sort=DESC&amp;Canceled={$Canceled}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;{$Session}"><img
                border="0" src="../images/down.png" title="{$SortMsg} {$Open_Account} DESC"
                alt="{$SortMsg} {$Open_Account} DESC"/></a>
    </td>
    <td nowrap="nowrap" align="center">{$Entrys}:&nbsp;{$MaxRows}
    </td>
</tr>
{* Display entrys from database if $MaxRows > 0 *}
{foreach from=$InvoiceData item=invoice}
<tr class="{cycle values=" grayTD
,wTD"}">
<td valign="top" align="left"><a name="{$invoice.INVOICEID}"
                                 title="{$AllInformation} {$Invoice_No} {$invoice.INVOICEID}"
                                 class="ninfolink"
                                 href="../invoice/info.php?myID={$invoice.MYID}&amp;invoiceID={$invoice.INVOICEID}&amp;infoID=30&amp;{$AddCurrentPage}Order={$Order}&amp;Sort={$Sort}&amp;{$Session}"
                                 target="_blank">
    {$invoice.INVOICEID}</a></td>
{if $invoice.CANCELED neq 1}
<td valign="top" align="left">
    {if $invoice.FIRSTNAME}
    {$invoice.FIRSTNAME}
    {/if}
    {if $invoice.LASTNAME}
    {$invoice.LASTNAME},
    {/if}
    {if $invoice.COMPANY}
    {$invoice.COMPANY}
    {/if}
</td>
<td valign="top" align="center">{$invoice.INVOICE_DATE}</td>
<td valign="top" align="right">{$invoice.TOTAL_AMOUNT|number_format}</td>
{if $invoice.PAID eq '2'}
<td valign="top" align="right" class="redtxt">{$invoice.TOTAL_AMOUNT-$invoice.SUM_PAID|number_format}
</td>
{else}
<td valign="top" align="right"></td>
{/if}
<td valign="top" align="center">
<td>
    {else}
<td valign="top" align="left" class="graytxt">
    {if $invoice.FIRSTNAME}
    {$invoice.FIRSTNAME}
    {/if}
    {if $invoice.LASTNAME}
    {$invoice.LASTNAME},
    {/if}
    {if $invoice.COMPANY}
    {$invoice.COMPANY}
    {/if}
</td>
<td valign="top" align="center" class="graytxt">{$invoice.INVOICE_DATE}</td>
<td valign="top" align="right" class="graytxt">
    <del>{$invoice.TOTAL_AMOUNT|number_format}</del>
</td>
{if $invoice.PAID eq '2'}
<td valign="top" align="right" class="graytxt">
    <del>{$invoice.TOTAL_AMOUNT-$invoice.SUM_PAID|number_format}</del>
</td>
{else}
<td valign="top" align="right" class="graytxt"></td>
{/if}
<td valign="top" align="center" class="graytxt">
<td>
    {/if}
    </tr>
    {foreachelse}
    <tr>
        <td align="center" colspan="6" class="redtxt">{$NoEntry}</td>
    </tr>
    {/foreach}
    <tr>
        <td>&nbsp;</td>
    </tr>
    {if $smarty.session.Username and ( $smarty.session.Username eq $Root )}
    <tr>
        <td>&nbsp;</td>
    </tr>
    {if $OPEN_ACCOUNT gt 0}
    <tr>
        <td valign="top" align="right" colspan="5">{$Open_Account} {$Invoice_Currency}:</td>
        <td valign="top" align="right" class="redtxt">{$OPEN_ACCOUNT|number_format}</td>
    </tr>
    {/if}
    <tr>
        <td valign="top" align="right" colspan="5">{$Invoice_Amount} - {$PageMsg} {$Invoice_Currency}:
        </td>
        <td valign="top" align="right">{$TOTAL_PAGE|number_format}</td>
    </tr>
    <tr>
        <td valign="top" align="right" colspan="5"><b>{$Invoice_Amount} {$Searchresult}
            {$Invoice_Currency}</b>:
        </td>
        <td valign="top" align="right"><b>{$TOTAL_AMOUNT|number_format}</b></td>
    </tr>
    {/if}
    <tr>
        <td>&nbsp;</td>
    </tr>
    {* Display pager and linkbar if $PageRows => $Rows ( lines per page ) *}
    {if $MaxPages and ($PageRows gte $MultiBar)}
    <tr>
        <td align="center" colspan="6">
            {if $CurrentPage > 1 }
            <a href="{$smarty.server.PHP_SELF}?page=1&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;{$Session}"><img
                    border="0" src="../images/first.png" title="{$FirstPageMsg}" alt="{$FirstPageMsg}"/></a>&nbsp;
            <a href="{$smarty.server.PHP_SELF}?page={$PrevPage}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;{$Session}"><img
                    border="0" src="../images/prev.png" title="{$PrevPageMsg}"
                    alt="{$PrevPageMsg}"/></a>&nbsp;
            {/if}
            {$PageMsg}&nbsp;<a title="{$PageMsg} {$CurrentPage} / {$MaxPages}" class="ninfolink"
                               href="{$smarty.server.PHP_SELF}?page={$CurrentPage}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;{$Session}">{$CurrentPage}</a>&nbsp;/&nbsp;{$MaxPages}&nbsp;
            {if $CurrentPage < $MaxPages }
            <a href="{$smarty.server.PHP_SELF}?page={$NextPage}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;{$Session}"><img
                    border="0" src="../images/next.png" title="{$NextPageMsg}"
                    alt="{$NextPageMsg}"/></a>&nbsp;
            <a href="{$smarty.server.PHP_SELF}?page={$MaxPages}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;myID={$myID}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}{$Searchstring}&amp;{$Session}"><img
                    border="0" src="../images/last.png" title="{$LastPageMsg}"
                    alt="{$LastPageMsg}"/></a>&nbsp;
            {/if}
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    {* Include the linkbar *}
    <tr>
        <td colspan="6">{include file="linkbar.tpl"}</td>
    </tr>
    {/if}
</tbody>
</table>
</td>
</tr>
<tr>
    <td id="td2_20" width="20%"><br/></td>
    <td id="td2_2" width="2%"></td>
    <td width="78%" valign="top"><br/></td>
</tr>
</tbody>
</table>
{include file="footer.tpl"}
