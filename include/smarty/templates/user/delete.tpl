{*
delete.tpl

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
    <tr>
        <td id="td1_20" width="20%" valign="top">
            {* Menubar start *}
            <table border="0" width="80%" cellspacing="0" cellpadding="0" summary="Tabelle 4">
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
                    <td align="left" class="mapcasting_menu_sub"><a accesskey="1"
                                                                     title="{$Useradministration} - {$List}"
                                                                     href="list.php?{$Session}">{$Useradministration}</a>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="mapcasting_menu_sub"><a accesskey="2"
                                                                     title="{$Useradministration} - {$New}"
                                                                     href="new.php?{$Session}">{$New}</a></td>
                </tr>
                <tr>
                    <td align="left" class="mapcasting_menu_sub"><a accesskey="3"
                                                                     title="{$Useradministration} - {$Search}"
                                                                     href="search.php?{$Session}">{$Search}</a></td>
                </tr>
                {if $smarty.session.Username and ( $smarty.session.Username != $Root )}
                <tr>
                    <td align="left" class="mapcasting_menu"><a accesskey="U" title="{$Superuser}"
                                                                 href="../login/sustart.php?{$Session}">{$Superuser}</a>
                    </td>
                </tr>
                {/if}
            </table>
        </td>
        {* Menubar end *}
        <td id="td1_2" width="2%"></td>
        <td width="78%" valign="top" align="center">
            {* Display User information *}
            <form id="Delete" name="Delete" action="deletef.php?{$Session}" method="post">
                <table width="80%" border="0" class="mapcasting_tabelle" cellspacing="3" cellpadding="3"
                       summary="Tabelle 2">
                    <tr>
                        <td valign="middle" align="left" colspan="2">
                            [&nbsp;<a title="{$BackMsg} - {$Useradministration} - {$List}" class="ninfolink"
                                      href="list.php?page={$page}&amp;Order={$Order}&amp;Sort={$Sort}&amp;{$Session}">{$BackMsg}</a>&nbsp;]
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2"><h2>{$Useradministration} - {$Delete}</h2></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td valign="middle" align="center" colspan="2">{$Delete} {$EntryNo} {$userID} ?</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td valign="top" align="center" colspan="2">
                            <input type="hidden" name="page" value="{$page}"/>
                            <input type="hidden" name="userID" value="{$userID}"/>
                            <input type="hidden" name="infoID" value="{$infoID}"/>
                            {if $infoID eq 9}
                            <input type="hidden" name="UserActive_1" value="{$UserActive_1}"/>
                            <input type="hidden" name="FullName_1" value="{$FullName_1}"/>
                            <input type="hidden" name="UserName_1" value="{$UserName_1}"/>
                            <input type="hidden" name="UserLanguage_1" value="{$UserLanguage_1}"/>
                            <input type="hidden" name="UserGroup1" value="{$UserGroup1}"/>
                            {/if}
                            <input type="hidden" name="Order" value="{$Order}"/>
                            <input type="hidden" name="Sort" value="{$Sort}"/>
                            <input type="submit" class="button" title="{$Deleteentry}" value="{$Delete}"/></td>
                    </tr>
                </table>
            </form>
        </td>
    </tr>
    <tr>
        <td id="td2_20" width="20%"><br/></td>
        <td id="td2_2" width="2%"></td>
        <td width="78%" valign="top"><br/></td>
    </tr>
</table>
{include file="footer.tpl"}
