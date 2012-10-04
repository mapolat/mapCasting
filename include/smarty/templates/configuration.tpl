{*
configuration.tpl

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
<body onLoad="document.Configuration.language.focus();">
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
                    <td align="left" class="mapcasting_menu"><a accesskey="W" title="{$Startpage}"
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
                    <td align="left" class="mapcasting_menu_sel"><a accesskey="S" title="{$Configuration}"
                                                                     href="configuration.php?{$Session}">{$Configuration}</a>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="mapcasting_menu_sub"><a accesskey="1" title="{$Message}"
                                                                     href="message/list.php?{$Session}">{$Message}</a>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="mapcasting_menu_sub"><a accesskey="3" title="{$Category}"
                                                                     href="category/list.php?{$Session}">{$Category}</a>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="mapcasting_menu_sub"><a accesskey="6" title="{$Useradministration}"
                                                                     href="user/list.php?{$Session}">{$Useradministration}</a>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="mapcasting_menu_sub"><a accesskey="7" title="{$PositionGroupSub}"
                                                                     href="posgroup/list.php?{$Session}">{$PositionGroupSub}</a>
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
                </tbody>
            </table>
        </td>
        {* Menubar end *}
        <td id="td1_2" width="2%"></td>
        <td class="mapcasting_tabelle" width="78%" valign="top" align="center">
            <p>&nbsp;</p>

            <h2>{$Configuration}</h2>

            <p>&nbsp;</p>
            {* Display all available languages *}
            <form id="Configuration" name="Configuration" action="languagef.php?{$Session}" method="post">
                <p align="center">{$Language}:&nbsp;<select class="choice250" name="language" title="{$ChooseLanguage}"
                                                            onChange="this.form.submit();">
                    <optgroup label="{$Language}" title="{$ChooseLanguage}">
                        {foreach item=language from=$choose_language}
                        {foreach key=key item=item from=$language}
                        {if $smarty.session.Language and ( $smarty.session.Language eq $key)}
                        <option label="{$item}" title="{$item}" value="{$key}" selected="selected">{$item}</option>
                        {else}
                        <option label="{$item}" title="{$item}" value="{$key}">{$item}</option>
                        {/if}
                        {/foreach}
                        {/foreach}
                    </optgroup>
                </select></p>
            </form>
            <p align="center"><br/>{$Hostname}&nbsp;(&nbsp;{$IPAddress}&nbsp;)<br/>{$Browser}</p>
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
