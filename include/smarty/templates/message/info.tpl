{*
info.tpl

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
                    <td align="left" class="mapcasting_menu"><a accesskey="R" title="{$Reports}"
                                                                 href="../reports/index.php?{$Session}">{$Reports}</a>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="mapcasting_menu"><a accesskey="S" title="{$Configuration}"
                                                                 href="../configuration.php?{$Session}">{$Configuration}</a>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="mapcasting_menu_sel"><a accesskey="1" title="{$Message} - {$List}"
                                                                     href="list.php?{$Session}">{$Message}</a></td>
                </tr>
                <tr>
                    <td align="left" class="mapcasting_menu_sub"><a accesskey="2" title="{$Message} - {$New}"
                                                                     href="new.php?{$Session}">{$New}</a></td>
                </tr>
                <tr>
                    <td align="left" class="mapcasting_menu_sub"><a accesskey="3" title="{$Message} - {$Search}"
                                                                     href="search.php?{$Session}">{$Search}</a></td>
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
            {* Display Position information *}
            <table width="80%" border="0" class="mapcasting_tabelle" cellspacing="3" cellpadding="3"
                   summary="Tabelle 2">
                <tbody>
                <tr>
                    <td align="center" colspan="2"><h2>{$Message} - {$Info}</h2></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                {if $smarty.session.Username and ( $smarty.session.Username eq $Root)}
                <tr>
                    <td align="center" colspan="2">
                        [&nbsp;<a title="{$Editentry}" class="nmenulink"
                                  href="edit.php?messageID={$messageID}&amp;infoID={$infoID}&amp;page={$page}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Description_1={$Description_1}&amp;{$Session}">{$Edit}</a>
                        &nbsp;|&nbsp;<a title="{$Deleteentry}" class="nmenulink"
                                        href="delete.php?messageID={$messageID}&amp;infoID={$infoID}&amp;page={$page}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Description_1={$Description_1}&amp;{$Session}">{$Delete}</a>&nbsp;]
                    </td>
                </tr>
                {/if}
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td align="center" colspan="2">{$AllInformation} {$EntryNo} {$messageID}</td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td valign="middle" align="center" colspan="2"><b>{$Message}:</b></td>
                </tr>
                <tr>
                    <td valign="middle" align="center" colspan="2">{$MESSAGE|nl2br}</td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                {* Display back button *}
                <tr>
                    <td valign="middle" align="center" width="100%" colspan="2">
                        {if $infoID == 9}
                        <form action="searchlist.php?{$Session}#{$messageID}" method="post">
                            <input type="hidden" name="page" value="{$page}"/>
                            <input type="hidden" name="Description_1" value="{$Description_1}"/>
                            <input type="hidden" name="Order" value="{$Order}"/>
                            <input type="hidden" name="Sort" value="{$Sort}"/>
                            <input type="submit" class="button" title="{$BackMsg} - {$Searchresult}"
                                   value="{$BackMsg} - {$Searchresult}"/></form>
                    </td>
                </tr>
                {else}
                <form action="list.php?{$Session}#{$messageID}" method="post">
                    <input type="hidden" name="page" value="{$page}"/>
                    <input type="hidden" name="Order" value="{$Order}"/>
                    <input type="hidden" name="Sort" value="{$Sort}"/>
                    <input type="submit" class="button" title="{$BackMsg} - {$List}" value="{$BackMsg} - {$List}"/>
                </form>
                </td></tr>
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
