{*
cashbook.tpl

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
    <td valign="middle" align="left" colspan="7">
        [&nbsp;<a title="{$BackMsg} - {$Reports}" class="ninfolink"
                  href="index.php?page={$page}&amp;Order={$Order}&amp;Sort={$Sort}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}">{$BackMsg}</a>&nbsp;]
        [&nbsp;<a title="{$PrintMsg} - {$Cashbook} - {$DateFrom} {$Date_Till} {$DateTill}"
                  class="ninfolink"
                  href="pdf/print_pdf.php?DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Type=Cashbook&amp;Canceled={$Canceled}&amp;MaxRows={$MaxRows}&amp;Order={$Order}&amp;Sort={$Sort}&amp;{$Session}"
                  target="_blank">{$PrintMsg}</a>&nbsp;]
    </td>
</tr>
<tr>
    <td align="center" colspan="7"><h2>{$Reports} - {$Cashbook}</h2></td>
</tr>
<tr>
    <td align="center" colspan="7">{$DateMsg} {$Date_From} {$DateFrom} {$Date_Till} {$DateTill}</td>
</tr>
<tr>
    <td>&nbsp;</td>
</tr>
{* Display pager if $MaxRows => $Rows ( lines per page ) *}
{if $MaxPages}
<tr>
    <td align="center" colspan="7">
        {if $CurrentPage > 1 }
        <a href="{$smarty.server.PHP_SELF}?page=1&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/first.png" title="{$FirstPageMsg}" alt="{$FirstPageMsg}"/></a>&nbsp;
        <a href="{$smarty.server.PHP_SELF}?page={$PrevPage}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/prev.png" title="{$PrevPageMsg}" alt="{$PrevPageMsg}"/></a>&nbsp;
        {/if}
        {$PageMsg}&nbsp;<a title="{$PageMsg} {$CurrentPage} / {$MaxPages}" class="ninfolink"
                           href="{$smarty.server.PHP_SELF}?page={$CurrentPage}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}">{$CurrentPage}</a>&nbsp;/&nbsp;{$MaxPages}&nbsp;
        {if $CurrentPage < $MaxPages }
        <a href="{$smarty.server.PHP_SELF}?page={$NextPage}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/next.png" title="{$NextPageMsg}" alt="{$NextPageMsg}"/></a>&nbsp;
        <a href="{$smarty.server.PHP_SELF}?page={$MaxPages}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/last.png" title="{$LastPageMsg}" alt="{$LastPageMsg}"/></a>&nbsp;
        {/if}
    </td>
</tr>
{/if}
<tr>
    <td></td>
</tr>
<tr class="mblueTD">
    <td nowrap="nowrap" align="left">&nbsp;{$Cashbook_No}
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=CASHBOOKID&amp;Sort=ASC&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/up.png" title="{$SortMsg} {$Cashbook_No} ASC"
                alt="{$SortMsg} {$Cashbook_No} ASC"/></a>
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=CASHBOOKID&amp;Sort=DESC&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/down.png" title="{$SortMsg} {$Cashbook_No} DESC"
                alt="{$SortMsg} {$Cashbook_No} DESC"/></a>
    </td>
    <td nowrap="nowrap" align="right">{$Takings} {$Cashbook_Currency}
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=TAKINGS&amp;Sort=ASC&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/up.png" title="{$SortMsg} {$Takings} ASC"
                alt="{$SortMsg} {$Takings} ASC"/></a>
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=TAKINGS&amp;Sort=DESC&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/down.png" title="{$SortMsg} {$Takings} DESC"
                alt="{$SortMsg} {$Takings} DESC"/></a>
    </td>
    <td nowrap="nowrap" align="right">{$Expenditures} {$Cashbook_Currency}
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=EXPENDITURES&amp;Sort=ASC&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/up.png" title="{$SortMsg} {$Expenditures} ASC"
                alt="{$SortMsg} {$Expenditures} ASC"/></a>
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=EXPENDITURES&amp;Sort=DESC&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/down.png" title="{$SortMsg} {$Expenditures} DESC"
                alt="{$SortMsg} {$Expenditures} DESC"/></a>
    </td>
    <td nowrap="nowrap" align="right">{$Cash_In_Hand} {$Cashbook_Currency}
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=CASH_IN_HAND&amp;Sort=ASC&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/up.png" title="{$SortMsg} {$Cash_In_Hand} ASC"
                alt="{$SortMsg} {$Cash_In_Hand} ASC"/></a>
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=CASH_IN_HAND&amp;Sort=DESC&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/down.png" title="{$SortMsg} {$Cash_In_Hand} DESC"
                alt="{$SortMsg} {$Cash_In_Hand} DESC"/></a>
    </td>
    <td nowrap="nowrap" align="center">{$DateMsg}
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=CASHBOOK_DATE&amp;Sort=ASC&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/up.png" title="{$SortMsg} {$DateMsg} ASC"
                alt="{$SortMsg} {$DateMsg} ASC"/></a>
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=CASHBOOK_DATE&amp;Sort=DESC&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/down.png" title="{$SortMsg} {$DateMsg} DESC"
                alt="{$SortMsg} {$DateMsg} DESC"/></a>
    </td>
    <td nowrap="nowrap" align="left">{$Cashbook_Description}
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=DESCRIPTION&amp;Sort=ASC&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/up.png" title="{$SortMsg} {$Cashbook_Description} ASC"
                alt="{$SortMsg} {$Cashbook_Description} ASC"/></a>
        <a href="{$smarty.server.PHP_SELF}?{$AddCurrentPage}Order=DESCRIPTION&amp;Sort=DESC&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/down.png" title="{$SortMsg} {$Cashbook_Description} DESC"
                alt="{$SortMsg} {$Cashbook_Description} DESC"/></a>
    </td>
    <td nowrap="nowrap" align="center">{$Entrys}:&nbsp;{$MaxRows}
        <a href="{$smarty.server.PHP_SELF}?Order={$Order}&amp;Sort={$Sort}&amp;Canceled=2&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/up.png" title="{$NotCanceledEntries}"
                alt="{$NotCanceledEntries}"/></a>
        <a href="{$smarty.server.PHP_SELF}?Order={$Order}&amp;Sort={$Sort}&amp;Canceled=1&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/down.png" title="{$CanceledEntries}"
                alt="{$CanceledEntries}"/></a>
        <a href="{$smarty.server.PHP_SELF}?Order={$Order}&amp;Sort={$Sort}&amp;Canceled=3&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/right.png" title="{$AllEntries}" alt="{$AllEntries}"/></a>
    </td>
</tr>
{* Display entrys from database if $MaxRows > 0 *}

{foreach from=$CashbookData item=cashbook}
<tr class="{cycle values=" grayTD
,wTD"}">
<td valign="top" align="left"><a name="{$cashbook.CASHBOOKID}"
                                 title="{$AllInformation} {$Cashbook_No} {$cashbook.CASHBOOKID}"
                                 class="ninfolink"
                                 href="../cashbook/info.php?cashbookID={$cashbook.CASHBOOKID}&amp;infoID=30&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$AddCurrentPage}Order={$Order}&amp;Sort={$Sort}&amp;{$Session}"
                                 target="_blank">
    {$cashbook.CASHBOOKID}</a></td>
{if $cashbook.CANCELED neq 1}
<td valign="top" align="right">
    {if $cashbook.TAKINGS neq 0}
    {$cashbook.TAKINGS|number_format}
    {/if}
</td>
<td valign="top" align="right">
    {if $cashbook.EXPENDITURES neq 0}
    {$cashbook.EXPENDITURES|number_format}
    {/if}
</td>
<td valign="top" align="right">
    {if $cashbook.CASH_IN_HAND neq 0}
    {$cashbook.CASH_IN_HAND|number_format}
    {/if}
</td>
<td valign="top" align="center">{$cashbook.CASHBOOK_DDATE}</td>
{if $cashbook.CASH_IN_HAND_STARTING_WITH neq 0}
<td valign="top" align="left" colspan="2">{$cashbook.DESCRIPTION} {$Cashbook_Currency}
    {$cashbook.CASH_IN_HAND_STARTING_WITH|number_format}
</td>
{else}
<td valign="top" align="left" colspan="2">{$cashbook.DESCRIPTION}</td>
{/if}
{else}
<td valign="top" align="right" class="graytxt">
    <del>
        {if $cashbook.TAKINGS neq 0}
        {$cashbook.TAKINGS|number_format}
        {/if}
    </del>
</td>
<td valign="top" align="right" class="graytxt">
    <del>
        {if $cashbook.EXPENDITURES neq 0}
        {$cashbook.EXPENDITURES|number_format}
        {/if}
    </del>
</td>
<td valign="top" align="right" class="graytxt">
    <del>
        {if $cashbook.CASH_IN_HAND neq 0}
        {$cashbook.CASH_IN_HAND|number_format}
        {/if}
    </del>
</td>
<td valign="top" align="center" class="graytxt">{$cashbook.CASHBOOK_DDATE}</td>
{if $cashbook.CASH_IN_HAND_STARTING_WITH neq 0}
<td valign="top" align="left" class="graytxt" colspan="2">{$cashbook.DESCRIPTION} {$Cashbook_Currency}
    <del>{$cashbook.CASH_IN_HAND_STARTING_WITH|number_format}</del>
</td>
{else}
<td valign="top" align="left" class="graytxt" colspan="2">{$cashbook.DESCRIPTION}</td>
{/if}
{/if}
</tr>
{foreachelse}
<tr>
    <td align="center" colspan="7" class="redtxt">{$NoEntry}</td>
</tr>
{/foreach}

<tr>
    <td>&nbsp;</td>
</tr>
<tr>
    <td>&nbsp;</td>
</tr>
<tr>
    <td valign="top" align="right" colspan="6">{$Takings} - {$PageMsg} {$Cashbook_Currency}:</td>
    <td valign="top" align="right">{$TOTAL_PAGE_TAKINGS|number_format}</td>
</tr>
<tr>
    <td valign="top" align="right" colspan="6">{$Expenditures} - {$PageMsg} {$Cashbook_Currency}:</td>
    <td valign="top" align="right" class="redtxt">{$TOTAL_PAGE_EXPENDITURES|number_format}</td>
</tr>
<tr>
    <td>&nbsp;</td>
</tr>
<tr>
    <td valign="top" align="right" colspan="6"><u>{$Starting_With} {$Cashbook_Currency}:</u></td>
    <td valign="top" align="right"><u>{$CASH_IN_HAND_STARTING_WITH|number_format}</u></td>
</tr>
<tr>
    <td valign="top" align="right" colspan="6">{$Takings} {$Cashbook_Currency}:</td>
    <td valign="top" align="right">{$TOTAL_TAKINGS|number_format}</td>
</tr>
<tr>
    <td valign="top" align="right" colspan="6">{$Expenditures} {$Cashbook_Currency}:</td>
    <td valign="top" align="right" class="redtxt">{$TOTAL_EXPENDITURES|number_format}</td>
</tr>
<tr>
    <td>&nbsp;</td>
</tr>
<tr>
    <td valign="top" align="right" colspan="6"><b>{$Cash_In_Hand} {$Cashbook_Currency}</b>:</td>
    <td valign="top" align="right"><b>{$CASH_IN_HAND|number_format}</b></td>
</tr>
<tr>
    <td>&nbsp;</td>
</tr>
{* Display pager and linkbar if $PageRows => $Rows ( lines per page ) *}
{if $MaxPages and ($PageRows gte $MultiBar)}
<tr>
    <td align="center" colspan="7">
        {if $CurrentPage > 1 }
        <a href="{$smarty.server.PHP_SELF}?page=1&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/first.png" title="{$FirstPageMsg}" alt="{$FirstPageMsg}"/></a>&nbsp;
        <a href="{$smarty.server.PHP_SELF}?page={$PrevPage}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/prev.png" title="{$PrevPageMsg}" alt="{$PrevPageMsg}"/></a>&nbsp;
        {/if}
        {$PageMsg}&nbsp;<a title="{$PageMsg} {$CurrentPage} / {$MaxPages}" class="ninfolink"
                           href="{$smarty.server.PHP_SELF}?page={$CurrentPage}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}">{$CurrentPage}</a>&nbsp;/&nbsp;{$MaxPages}&nbsp;
        {if $CurrentPage < $MaxPages }
        <a href="{$smarty.server.PHP_SELF}?page={$NextPage}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/next.png" title="{$NextPageMsg}" alt="{$NextPageMsg}"/></a>&nbsp;
        <a href="{$smarty.server.PHP_SELF}?page={$MaxPages}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Canceled={$Canceled}&amp;DateFrom={$DateFrom}&amp;DateTill={$DateTill}&amp;Report={$Report}&amp;{$Session}"><img
                border="0" src="../images/last.png" title="{$LastPageMsg}" alt="{$LastPageMsg}"/></a>&nbsp;
        {/if}
    </td>
</tr>
<tr>
    <td>&nbsp;</td>
</tr>
{* Include the linkbar *}
<tr>
    <td colspan="7">{include file="linkbar.tpl"}</td>
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
