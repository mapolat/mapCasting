{*
index.tpl

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
                                                                   href="login/suend.php?{$Session}">{$Logout}</a></td>
                </tr>
                {else}
                <tr>
                    <td align="center" class="mapcasting_menu"><a accesskey="L" title="{$Logout}"
                                                                   href="login/logout.php?{$Session}">{$Logout}</a></td>
                </tr>
                {/if}
                <tr>
                    <td align="left" class="mapcasting_menu_sel"><a accesskey="W" title="{$Startpage}"
                                                                     href="index.php?{$Session}">{$Startpage}</a></td>
                </tr>
                <tr>
                    <td align="left" class="mapcasting_menu"><a accesskey="A" title="{$Addressbook}"
                                                                 href="addressbook/list.php?{$Session}">{$Addressbook}</a>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="mapcasting_menu"><a accesskey="R" title="{$Reports}"
                                                                 href="reports/index.php?{$Session}">{$Reports}</a></td>
                </tr>
                <tr>
                    <td align="left" class="mapcasting_menu"><a accesskey="S" title="{$Configuration}"
                                                                 href="configuration.php?{$Session}">{$Configuration}</a>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="mapcasting_menu"><a accesskey="Y" title="{$Syslog}"
                                                                 href="syslog/list.php?{$Session}">{$Syslog}</a></td>
                </tr>
                {if $smarty.session.Username and ( $smarty.session.Username != $Root )}
                <tr>
                    <td align="left" class="mapcasting_menu"><a accesskey="U" title="{$Superuser}"
                                                                 href="login/sustart.php?{$Session}">{$Superuser}</a>
                    </td>
                </tr>
                {/if}
                {if $LOGINUPDATE neq 1 || $TABLEUPDATE neq 1}
                <tr>
                    <td align="left" class="mapcasting_menu"><a title="Update"
                                                                 href="updatetable/index.php?{$Session}">Update</a></td>
                </tr>
                {/if}
                </tbody>
            </table>
        </td>
        {* Menubar end *}
        <td id="td1_2" width="2%"></td>
        <td class="mapcasting_tabelle" width="78%" valign="top" align="center">
            <p align="center">
                [&nbsp;<a class="ninfolink" href="http://www.mapolat.p7.de/mapCasting/" target="_blank"
                          title="Official mapCasting Home Page">Official mapCasting Home Page</a>&nbsp;]&nbsp;
                [&nbsp;<a class="ninfolink" href="http://mapolat.p7.de/tracker" target="_blank"
                          title="Reporting mapCasting Bugs">Bugs</a>&nbsp;]&nbsp;
                [&nbsp;<a class="ninfolink" href="http://mapolat.p7.de/tracker" target="_blank"
                          title="Support Requests">Support</a>&nbsp;]&nbsp;
            </p>

            <p>&nbsp;</p>

            <h2>{$Startpage}</h2>

            <p>&nbsp;</p>

            <p align="center">{$Welcome} {$Programname}</p>

            <p>&nbsp;</p>
            {* Display reminder if there are any open invoices *}
            {if $smarty.session.UserReminder && $smarty.session.UserReminder eq 1}
            <form action="reports/outstanding_accounts.php?{$Session}" method="post">
                <input type="hidden" name="InvoiceReminder" value="1"/>
                <input type="hidden" name="DateFrom" value="{$From_Date}"/>
                <input type="hidden" name="DateTill" value="{$Till_Date}"/>

                <p align="center"><input type="submit" class="button"
                                         title="{$OpenAccountMsg} {$OpenSince} {$Difference}"
                                         value="{$OpenAccountMsg} {$OpenSince} {$Difference}"/></p></form>
            {/if}
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
