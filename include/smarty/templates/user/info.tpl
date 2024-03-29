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
                    <td align="left" class="mapcasting_menu_sel"><a accesskey="1"
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
                    <td align="center" colspan="2"><h2>{$Useradministration} - {$Info}</h2></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                {if $smarty.session.Username and ( $smarty.session.Username eq $Root or $smarty.session.Usergroup1 eq
                $AdminGroup1 or $smarty.session.Usergroup2 eq $AdminGroup2)}
                <tr>
                    <td align="center" colspan="2">
                        [&nbsp;<a title="{$Editentry}" class="nmenulink"
                                  href="edit.php?userID={$userID}&amp;infoID={$infoID}&amp;page={$page}&amp;Order={$Order}&amp;Sort={$Sort}&amp;UserActive_1={$UserActive_1}&amp;FullName_1={$FullName_1}&amp;UserName_1={$UserName_1}&amp;UserLanguage_1={$UserLanguage_1}&amp;UserGroup_1={$UserGroup_1}&amp;{$Session}">{$Edit}</a>
                        &nbsp;|&nbsp;<a title="{$Deleteentry}" class="nmenulink"
                                        href="delete.php?userID={$userID}&amp;infoID={$infoID}&amp;page={$page}&amp;Order={$Order}&amp;Sort={$Sort}&amp;UserActive_1={$UserActive_1}&amp;FullName_1={$FullName_1}&amp;UserName_1={$UserName_1}&amp;UserLanguage_1={$UserLanguage_1}&amp;UserGroup_1={$UserGroup_1}&amp;{$Session}">{$Delete}</a>&nbsp;]
                    </td>
                </tr>
                {elseif $smarty.session.Username and ( $smarty.session.Username eq $USERNAME and
                $smarty.session.Username neq $Root and $smarty.session.Usergroup1 neq $AdminGroup1 and
                $smarty.session.Usergroup2 neq $AdminGroup2)}
                <tr>
                    <td align="center" colspan="2">
                        [&nbsp;<a title="{$Editentry}" class="nmenulink"
                                  href="edit.php?userID={$userID}&amp;infoID={$infoID}&amp;page={$page}&amp;Order={$Order}&amp;Sort={$Sort}&amp;UserActive_1={$UserActive_1}&amp;FullName_1={$FullName_1}&amp;UserName_1={$UserName_1}&amp;UserLanguage_1={$UserLanguage_1}&amp;UserGroup_1={$UserGroup_1}&amp;{$Session}">{$Edit}</a>&nbsp;]
                    </td>
                </tr>
                {/if}
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td align="center" colspan="2">{$AllInformation} {$EntryNo} {$userID}</td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td valign="middle" align="right" width="40%">{$User_Active}:</td>
                    <td class="dbTxt" valign="middle" align="left" width="60%">{$USERACTIVE}</td>
                </tr>
                <tr>
                    <td valign="middle" align="right" width="40%">{$Full_Name}:</td>
                    <td class="dbTxt" valign="middle" align="left" width="60%">{$FULLNAME}</td>
                </tr>
                <tr>
                    <td valign="middle" align="right" width="40%">{$User_Name}:</td>
                    <td class="dbTxt" valign="middle" align="left" width="60%">{$USERNAME}</td>
                </tr>
                <tr>
                    <td valign="middle" align="right" width="40%">{$User_Group}&nbsp;1:</td>
                    <td class="dbTxt" valign="middle" align="left" width="60%">{$USERGROUP1}</td>
                </tr>
                <tr>
                    <td valign="middle" align="right" width="40%">{$User_Group}&nbsp;2:</td>
                    <td class="dbTxt" valign="middle" align="left" width="60%">{$USERGROUP2}</td>
                </tr>
                <tr>
                    <td valign="middle" align="right" width="40%">{$Language}:</td>
                    <td class="dbTxt" valign="middle" align="left" width="60%">{$LANGUAGE}</td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                {* Display back button *}
                <tr>
                    <td valign="middle" align="center" width="100%" colspan="2">
                        {if $infoID == 9}
                        <form action="searchlist.php?{$Session}#{$userID}" method="post">
                            <input type="hidden" name="page" value="{$page}"/>
                            <input type="hidden" name="UserActive_1" value="{$UserActive_1}"/>
                            <input type="hidden" name="FullName_1" value="{$FullName_1}"/>
                            <input type="hidden" name="UserName_1" value="{$UserName_1}"/>
                            <input type="hidden" name="UserGroup_1" value="{$UserGroup_1}"/>
                            <input type="hidden" name="UserLanguage_1" value="{$UserLanguage_1}"/>
                            <input type="hidden" name="Order" value="{$Order}"/>
                            <input type="hidden" name="Sort" value="{$Sort}"/>
                            <input type="submit" class="button" title="{$BackMsg} - {$Searchresult}"
                                   value="{$BackMsg} - {$Searchresult}"/></form>
                    </td>
                </tr>
                {else}
                <form action="list.php?{$Session}#{$userID}" method="post">
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
