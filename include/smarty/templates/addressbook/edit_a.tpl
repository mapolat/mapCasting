{*
edit.tpl

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

{if $mark}
<body onLoad="document.Edit.{$mark}.focus();">
{else}
<body onload="document.Edit.UserName.focus();">
{/if}

{include file="htable.tpl"}

<table border="0" width="100%" cellspacing="0" cellpadding="0" summary="Tabelle 3">
<tr>
<td id="td1_20" width="20%" valign="top">

    {* Menubar start *}

    <table border="0" width="80%" cellspacing="0" cellpadding="0" summary="Tabelle 4">

        {if $smarty.session.SuperUser and ( $smarty.session.SuperUser eq $Root )}
        <tr>
            <td align="center" class="mapcasting_menu">
                <a accesskey="L" title="{$Logout}" href="../login/suend.php?{$Session}">{$Logout}</a></td>
        </tr>
        {else}
        <tr>
            <td align="center" class="mapcasting_menu">
                <a accesskey="L" title="{$Logout}" href="../login/logout.php?{$Session}">{$Logout}</a></td>
        </tr>
        {/if}

        <tr>
            <td align="left" class="mapcasting_menu">
                <a accesskey="W" title="{$Startpage}" href="../index.php?{$Session}">{$Startpage}</a></td>
        </tr>

        <tr>
            <td align="left" class="mapcasting_menu_sel">
                <a accesskey="A" title="{$Addressbook} - {$List}" href="list.php?{$Session}">{$Addressbook}</a></td>
        </tr>

        <tr>
            <td align="left" class="mapcasting_menu_sub">
                <a accesskey="1" title="{$Addressbook} - {$New}" href="new.php?{$Session}">{$New}</a></td>
        </tr>

        <tr>
            <td align="left" class="mapcasting_menu_sub">
                <a accesskey="2" title="{$Addressbook} - {$Search}" href="search.php?{$Session}">{$Search}</a></td>
        </tr>

        <tr>
            <td align="left" class="mapcasting_menu_sub">
                <a accesskey="3" title="{$Addressbook} - {$DetailSearch}"
                   href="search_e.php?{$Session}">{$DetailSearch}</a></td>
        </tr>

        <tr>
            <td align="left" class="mapcasting_menu">
                <a accesskey="R" title="{$Reports}" href="../reports/index.php?{$Session}">{$Reports}</a></td>
        </tr>

        <tr>
            <td align="left" class="mapcasting_menu">
                <a accesskey="S" title="{$Configuration}" href="../configuration.php?{$Session}">{$Configuration}</a>
            </td>
        </tr>

        {if $smarty.session.Username and ( $smarty.session.Username != $Root )}
        <tr>
            <td align="left" class="mapcasting_menu">
                <a accesskey="U" title="{$Superuser}" href="../login/sustart.php?{$Session}">{$Superuser}</a></td>
        </tr>
        {/if}

    </table>
</td>

{* Menubar end *}

<td id="td1_2" width="2%"></td>

<td width="78%" valign="top" align="center">
    <form id="Edit" name="Edit" action="editf_a.php?{$Session}" method="post">
        <table width="80%" class="mapcasting_tabelle" border="0" cellspacing="0" cellpadding="2" summary="Tabelle 1">

            {* Display back button *}

            <tr>
                <td valign="middle" align="left" colspan="2">

                    {if $Type eq "Info"}
                    [&nbsp;<a title="{$BackMsg} - {$Addressbook} - {$Auth_Info}"
                              class="ninfolink"
                              href="info_a.php?myID={$myID}&amp;infoID={$infoID}&amp;page={$page}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Customer={$Customer}{$Searchstring}&amp;{$Session}">{$BackMsg}</a>&nbsp;]
                    {elseif $infoID eq 9}
                    [&nbsp;<a title="{$BackMsg} - {$Addressbook} - {$Searchresult}"
                              class="ninfolink"
                              href="searchlist.php?page={$page}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Customer={$Customer}&amp;{$Session}#{$myID}">{$BackMsg}</a>&nbsp;]
                    {elseif $infoID eq 10}
                    [&nbsp;<a title="{$BackMsg} - {$Addressbook} - {$Searchresult}"
                              class="ninfolink"
                              href="searchlist_e.php?page={$page}&amp;Order={$Order}&amp;Sort={$Sort}{$Searchstring}&amp;{$Session}#{$myID}">{$BackMsg}</a>&nbsp;]
                    {else}
                    [&nbsp;<a title="{$BackMsg} - {$Addressbook} - {$List}"
                              class="ninfolink"
                              href="list.php?page={$page}&amp;Order={$Order}&amp;Sort={$Sort}&amp;{$Session}#{$myID}">{$BackMsg}</a>&nbsp;]
                    {/if}

                </td>
            </tr>

            <tr>
                <td align="center" colspan="2"><h2>{$Addressbook} - {$Edit}</h2></td>
            </tr>

            {* Display pager *}

            <tr>
                <td align="center" colspan="2">

                    {if $CurrentMyID > $MinMyID }
                    <a href="{$smarty.server.PHP_SELF}?myID={$MinMyID}&amp;page={$page}&amp;infoID={$infoID}&amp;Order={$Order}&amp;Sort={$Sort}{$Searchstring}&amp;{$Session}"><img
                            border="0"
                            src="../images/first.png"
                            title="{$FirstPageMsg}"
                            alt="{$FirstPageMsg}"/></a>&nbsp;
                    <a href="{$smarty.server.PHP_SELF}?myID={$PrevMyID}&amp;page={$page}&amp;infoID={$infoID}&amp;Order={$Order}&amp;Sort={$Sort}{$Searchstring}&amp;{$Session}"><img
                            border="0"
                            src="../images/prev.png"
                            title="{$PrevPageMsg}"
                            alt="{$PrevPageMsg}"/></a>&nbsp;
                    {/if}

                    {$Customer_No}:&nbsp;<a title="{$Customer_No}: {$CurrentMyID} / {$MaxMyID}"
                                            class="ninfolink"
                                            href="{$smarty.server.PHP_SELF}?myID={$CurrentMyID}&amp;page={$page}&amp;infoID={$infoID}&amp;Order={$Order}&amp;Sort={$Sort}{$Searchstring}&amp;{$Session}">{$CurrentMyID}</a>&nbsp;/&nbsp;{$MaxMyID}&nbsp;

                    {if $CurrentMyID < $MaxMyID }
                    <a href="{$smarty.server.PHP_SELF}?myID={$NextMyID}&amp;page={$page}&amp;infoID={$infoID}&amp;Order={$Order}&amp;Sort={$Sort}{$Searchstring}&amp;{$Session}"><img
                            border="0"
                            src="../images/next.png"
                            title="{$NextPageMsg}"
                            alt="{$NextPageMsg}"/></a>&nbsp;
                    <a href="{$smarty.server.PHP_SELF}?myID={$MaxMyID}&amp;page={$page}&amp;infoID={$infoID}&amp;Order={$Order}&amp;Sort={$Sort}{$Searchstring}&amp;{$Session}"><img
                            border="0"
                            src="../images/last.png"
                            title="{$LastPageMsg}"
                            alt="{$LastPageMsg}"/></a>&nbsp;
                    {/if}

                </td>
            </tr>

            <tr>
                <td></td>
            </tr>

            {if $MYID eq 0}
            <tr>
                <td align="center" colspan="2" class="redtxt">I'm Sorry, No Information Available.</td>
            </tr>
            {/if}

            <tr>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td align="center" colspan="2">
                    [&nbsp;<a title="{$Basic_Info}"
                              class="nmenulink"
                              href="edit.php?myID={$MYID}&amp;infoID={$infoID}&amp;page={$page}&amp;Type={$Type}&amp;Customer={$Customer}{$Searchstring}&amp;Order={$Order}&amp;Sort={$Sort}&amp;{$Session}">{$Basic_Info}</a>&nbsp;]
                    &nbsp;
                    [&nbsp;<a title="{$Extended_Info}"
                              class="nmenulink"
                              href="edit_e.php?myID={$MYID}&amp;infoID={$infoID}&amp;page={$page}&amp;Type={$Type}&amp;Customer={$Customer}{$Searchstring}&amp;Order={$Order}&amp;Sort={$Sort}&amp;{$Session}">{$Extended_Info}</a>&nbsp;]
                    &nbsp;
                    [&nbsp;<a title="{$Auth_Info}"
                              class="nmenulink"
                              href="edit_a.php?myID={$MYID}&amp;infoID={$infoID}&amp;page={$page}&amp;Type={$Type}&amp;Customer={$Customer}{$Searchstring}&amp;Order={$Order}&amp;Sort={$Sort}&amp;{$Session}"><b>{$Auth_Info}</b></a>&nbsp;]
                </td>
            </tr>

            <tr>
                <td>&nbsp;</td>
            </tr>


            <tr>
                <td valign="middle" align="right" width="30%">{$User_Active}:</td>
                <td class="dbTxt" valign="middle" align="left" width="70%">
                    <select class="choice200" name="UserActive" title="{$User_Active}">
                        <optgroup label="{$User_Active}" title="{$User_Active}">

                            {foreach item=user_active from=$choice_yes_no}

                            {foreach key=key item=item from=$user_active}

                            {if $USERACTIVE and ( $USERACTIVE eq $key)}
                            <option label="{$item}" title="{$item}" value="{$key}" selected="selected">{$item}</option>
                            {else}
                            <option label="{$item}" title="{$item}" value="{$key}">{$item}</option>
                            {/if}

                            {/foreach}

                            {/foreach}

                        </optgroup>
                    </select>
                </td>
            </tr>

            <tr>
                <td valign="middle" align="right" width="30%"><b>{$Username}</b>:</td>
                <td class="dbTxt" valign="middle" align="left" width="70%">
                    <input class="form_input" type="text" name="UserName" size="22" value="{$USERNAME}"/></td>
            </tr>
            <tr>
                <td valign="middle" align="right" width="30%">{$Language}:</td>
                <td class="dbTxt" valign="top" align="left" width="70%">
                    <select class="choice200" name="UserLanguage" title="{$Language}">
                        <optgroup label="{$Language}" title="{$Language}">

                            {foreach item=language from=$choose_language}

                            {foreach key=key item=item from=$language}

                            {if $LANGUAGE and ( $LANGUAGE == $key)}
                            <option label="{$item}" title="{$item}" value="{$key}" selected="selected">{$item}</option>
                            {else}
                            <option label="{$item}" title="{$item}" value="{$key}">{$item}</option>
                            {/if}

                            {/foreach}

                            {/foreach}

                        </optgroup>
                    </select>
                </td>
            </tr>

            <tr>
                <td valign="middle" align="right" width="30%"><b>{$Password}</b>:</td>
                <td class="dbTxt" valign="top" align="left" width="70%">
                    <input class="form_input" type="password" name="Password1" size="22" value="{$PASSWORD}"/></td>
            </tr>

            <tr>
                <td valign="middle" align="right" width="30%"><b>{$Repeat_Password}</b>:</td>
                <td class="dbTxt" valign="top" align="left" width="70%">
                    <input class="form_input" type="password" name="Password2" size="22" value="{$PASSWORD}"/></td>
            </tr>

            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td valign="top" align="center" colspan="2">
                    <input type="hidden" name="myID" value="{$myID}"/>
                    <input type="hidden" name="page" value="{$page}"/>
                    <input type="hidden" name="infoID" value="{$infoID}"/>
                    <input type="hidden" name="Customer" value="{$Customer}"/>
                    <input type="hidden" name="Order" value="{$Order}"/>
                    <input type="hidden" name="Sort" value="{$Sort}"/>

                    {if $infoID eq 10}

                    {include file="addressbook/userinput.tpl"}

                    {/if}

                    <input type="submit" class="button" title="{$ChangeMsg}" value="{$ChangeMsg}"/></td>
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

</body>

{include file="footer.tpl"}
