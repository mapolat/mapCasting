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
                    <td align="left" class="mapcasting_menu"><a accesskey="Y" title="{$Syslog}"
                                                                 href="../syslog/list.php?{$Session}">{$Syslog}</a></td>
                </tr>
                <tr>
                    <td align="left" class="mapcasting_menu_sel"><a title="Update"
                                                                     href="index.php?{$Session}">Update</a></td>
                </tr>

                </tbody>
            </table>
        </td>
        {* Menubar end *}
        <td id="td1_2" width="2%"></td>
        <td class="mapcasting_tabelle" width="78%" valign="top" align="center">
            <p>&nbsp;</p>

            <h2>Update</h2>

            <p>&nbsp;</p>

            {* Update Login *}
            {if $LOGINUPDATE eq 2}
            <p align="center">{$Welcome} {$Programname} - UPDATE</p>

            <p>&nbsp;</p>

            <form action="loginf.php?{$Session}" method="post">
                <p align="center"><input type="submit" class="button" title="Update Login" value="Update Login"/></p>
            </form>
            {/if}

            {* Update mapCasting *}
            {if $LOGINUPDATE eq 1 and $TABLEUPDATE eq 2}
            <p align="center">{$Welcome} {$Programname} - UPDATE</p>

            <p>&nbsp;</p>

            <form action="settingsf.php?{$Session}" method="post">
                <p align="center">
                    <input type="submit" class="button" title="Update mapCasting" value="Update mapCasting"
                           onClick="this.form.textfeld.value='{$Programname} UPDATE... Please wait, this can take some time.'"/>
                    <br/>
                    <br/>
                    <input class="form_input" type="text" name="textfeld"/><br/>
                </p>
            </form>
            {/if}

            {* Display Congratulation message *}
            {if $LOGINUPDATE eq 1 and $TABLEUPDATE eq 1}
            <p align="center">Congratulation, mapCasting was succesfully updated.</p>

            <p>&nbsp;</p>

            <p align="center">After you change the Position/Article-Group manually, you can also Update saved article
                groups.</p>

            <p>&nbsp;</p>

            <form action="article_groupf.php?{$Session}" method="post">
                <p align="center"><input type="submit" class="button" title="Update Position/Article-Group"
                                         value="Update Position/Group"/></p>
            </form>

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
