{*
new.tpl

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
<body onLoad="document.New.{$mark}.focus();">
{else}
<body onload="document.New.prefix.focus();">
{/if}

{include file="htable.tpl"}

<table border="0" width="100%" cellspacing="0" cellpadding="0" summary="Tabelle 3">
<tr>

{* Menubar start *}

<td id="td1_20" width="20%" valign="top">
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
            <td align="left" class="mapcasting_menu">
                <a accesskey="A" title="{$Addressbook} - {$List}" href="list.php?{$Session}">{$Addressbook}</a></td>
        </tr>
        <tr>
            <td align="left" class="mapcasting_menu_sel">
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
<form id="New" name="New" action="newf.php?{$Session}" method="post">
<table width="100%" class="mapcasting_tabelle" border="0" cellspacing="0" cellpadding="2" summary="Tabelle 1">

{* Display back button *}

<tr>
    <td valign="middle" align="left" colspan="4">

        {if $infoID eq 9}
        [&nbsp;<a title="{$BackMsg} - {$Addressbook} - {$Searchresult}"
                  class="ninfolink"
                  href="searchlist.php?page={$page}&amp;Order={$Order}&amp;Sort={$Sort}&amp;Customer={$Customer}&amp;{$Session}">{$BackMsg}</a>&nbsp;]
        {elseif $infoID eq 10}
        [&nbsp;<a title="{$BackMsg} - {$Addressbook} - {$Searchresult}"
                  class="ninfolink"
                  href="searchlist_e.php?page={$page}&amp;Order={$Order}&amp;Sort={$Sort}&amp;{$Session}">{$BackMsg}</a>&nbsp;]
        {else}
        [&nbsp;<a title="{$BackMsg} - {$Addressbook} - {$List}"
                  class="ninfolink"
                  href="list.php?page={$page}&amp;Order={$Order}&amp;Sort={$Sort}&amp;{$Session}">{$BackMsg}</a>&nbsp;]
        {/if}

    </td>
</tr>

<tr>
    <td align="center" colspan="4"><h2>{$Addressbook} - {$New}</h2></td>
</tr>

{if $smarty.session.NewID and ( $smarty.session.NewID eq 1 )}
<tr>
    <td align="center" colspan="4" class="greentxt">{$NewEntry} {$Customer_No} {$MyID}</td>
</tr>
{/if}

<tr>
    <td>&nbsp;</td>
</tr>

<tr>
    <td align="center" colspan="4" class="dbTxt">[ {$Customer_No} {$MyID+1} ]</td>
</tr>

<tr>
    <td>&nbsp;</td>
</tr>

<tr>
    <td valign="middle" align="left" width="25%"></td>
    <td class="dbTxt" valign="middle" align="left" width="25%"></td>
    <td valign="middle" align="left" width="25%"></td>
    <td class="dbTxt" valign="middle" align="left" width="25%"></td>
</tr>

<tr>
    <td valign="middle" align="left" width="25%">{$Print_Name}</td>
    <td class="dbTxt" valign="middle" align="left" width="25%">
        <select class="choice200" name="printname" title="{$Print_Name}">
            <optgroup label="{$Print_Name}" title="{$Print_Name}">

                {foreach item=yes_no from=$choice_yes_no}

                {foreach key=key item=item from=$yes_no}

                {if $printname and ( $printname == $key)}
                <option label="{$item}" title="{$item}" value="{$key}" selected="selected">{$item}</option>
                {else}
                <option label="{$item}" title="{$item}" value="{$key}">{$item}</option>
                {/if}

                {/foreach}

                {/foreach}

            </optgroup>
        </select></td>
    <td width="25%"></td>
    <td width="25%"></td>
</tr>

<tr>
    <td valign="middle" align="left" width="25%"><b>{$Prefix}</b>&nbsp;</td>
    <td class="dbTxt" valign="middle" align="left" width="25%">
        <input type="text" name="prefix" size="22" value="{$prefix}"/></td>
    <td valign="middle" align="left" width="25%">{$CTitle}</td>
    <td class="dbTxt" valign="middle" align="left" width="25%">
        <input type="text" name="title" size="22" value="{$title}"/></td>
</tr>

<tr>
    <td valign="middle" align="left"><b>{$Firstname}</b>&nbsp;</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="firstname" size="22" value="{$firstname}"/></td>
    <td valign="middle" align="left">{$Initials}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="initials" size="22" value="{$initials}"/></td>
</tr>

<tr>
    <td valign="middle" align="left"><b>{$Lastname}</b>&nbsp;</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="lastname" size="22" value="{$lastname}"/></td>
    <td valign="middle" align="left">{$Phonehome}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="phonehome" size="22" value="{$phonehome}"/></td>
</tr>

<tr>
    <td valign="middle" align="left">{$Salutation}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="salutation" size="22" value="{$salutation}"/></td>
    <td valign="middle" align="left">{$Mobile}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="mobile" size="22" value="{$mobile}"/></td>
</tr>

<tr>
    <td valign="middle" align="left"><b>{$Address}</b>&nbsp;</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="address" size="22" value="{$address}"/></td>
    <td valign="middle" align="left">{$Fax}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="fax" size="22" value="{$fax}"/></td>
</tr>

<tr>
    <td valign="middle" align="left"><b>{$Country}</b>&nbsp;</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="country" size="22" value="{if $country}{$country}{else}{$CompanyCountry}{/if}"/></td>
    <td valign="middle" align="left">{$Stateprov}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="stateprov" size="22" value="{$stateprov}"/></td>
</tr>

<tr>
    <td valign="middle" align="left"><b>{$Postalcode}</b>&nbsp;</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="postalcode" size="22" value="{$postalcode}"/></td>
    <td valign="middle" align="left"><b>{$City}</b>&nbsp;</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="city" size="22" value="{$city}"/></td>
</tr>

<tr>
    <td valign="middle" align="left">{$Email}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="email" size="22" value="{$email}"/></td>
    <td valign="middle" align="left">{$Url}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="url" size="22" value="{$url}"/></td>
</tr>

<tr>
    <td>&nbsp;</td>
</tr>

<tr>
    <td valign="middle" align="left">{$Company}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="company" size="22" value="{$company}"/></td>
    <td valign="middle" align="left">{$Phonework}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="phonework" size="22" value="{$phonework}"/></td>
</tr>

<tr>
    <td valign="middle" align="left">{$Department}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="department" size="22" value="{$department}"/></td>
    <td valign="middle" align="left">{$Phoneoffi}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="phoneoffi" size="22" value="{$phoneoffi}"/></td>
</tr>

<tr>
    <td valign="middle" align="left">{$CPosition}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="position" size="22" value="{$position}"/></td>
    <td valign="middle" align="left">{$Phoneothe}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="phoneothe" size="22" value="{$phoneothe}"/></td>
</tr>

<tr>
    <td valign="middle" align="left">{$Birthday}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="birthday" size="22" value="{if $birthday != 0}{$birthday}{/if}"/></td>
    <td valign="middle" align="left">{$Pager}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="pager" size="22" value="{$pager}"/></td>
</tr>

<tr>
    <td valign="middle" align="left">{$Birthplace}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="birthplace" size="22" value="{if $birthplace != 0}{$birthplace}{/if}"/></td>
    <td valign="middle" align="left">{$Nationality}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="pager" size="22" value="{$nationality}"/></td>
</tr>

<tr>
    <td>&nbsp;</td>
</tr>

<tr>
    <td valign="middle" align="left"><b>{$Category}</b></td>
    <td class="dbTxt" valign="middle" align="left">
        <select class="choice200" name="category" title="{$Category}">
            <optgroup label="{$Category}" title="{$Category}">

                {foreach from=$CategoryData item=custcategory}

                {if $category == $custcategory.CATEGORYID}
                <option label="{$custcategory.DESCRIPTION}"
                        title="{$custcategory.DESCRIPTION}"
                        value="{$custcategory.CATEGORYID}"
                        selected="selected">
                    {$custcategory.DESCRIPTION}
                </option>
                {else}
                <option label="{$custcategory.DESCRIPTION}" title="{$custcategory.DESCRIPTION}"
                        value="{$custcategory.CATEGORYID}">
                    {$custcategory.DESCRIPTION}
                </option>
                {/if}

                {/foreach}

            </optgroup>
        </select></td>
    <td valign="middle" align="left" width="25%"></td>
</tr>

<tr>
    <td valign="middle" align="left" width="25%">{$CustMessage}</td>
    <td class="dbTxt" valign="middle" align="left" width="25%">
        <select class="choice200" name="message" title="{$CustMessage}">
            <optgroup label="{$CustMessage}" title="{$CustMessage}">
                <option title="{$Choose_Message}" value="">--- {$Choose_Message} ---
                </option>

                {foreach from=$MessageData item=custmessage}

                {if $message == $custmessage.MESSAGEID}
                <option label="{$custmessage.DESCRIPTION}"
                        title="{$custmessage.DESCRIPTION}"
                        value="{$custmessage.MESSAGEID}"
                        selected="selected">
                    {$custmessage.DESCRIPTION}
                </option>
                {else}
                <option label="{$custmessage.DESCRIPTION}" title="{$custmessage.DESCRIPTION}"
                        value="{$custmessage.MESSAGEID}">
                    {$custmessage.DESCRIPTION}
                </option>
                {/if}

                {/foreach}

            </optgroup>
        </select></td>
    <td valign="middle" align="left" width="25%"></td>
</tr>

<tr>
    <td valign="middle" align="left" width="25%">{$Note}</td>
    <td class="dbTxt" valign="middle" align="left" width="75%" colspan="3">
        <textarea name="note" rows="5" cols="20">{$note}</textarea></td>
</tr>

<tr>
    <td>&nbsp;</td>
</tr>

<tr>
    <td valign="middle" align="left" width="25%">{$Email2}</td>
    <td class="dbTxt" valign="middle" align="left">
        <input type="text" name="email2" size="22" value="{$email2}"/></td>
    <td valign="middle" align="left" width="25%">{$Url2}</td>
    <td class="dbTxt" valign="middle" align="left" width="25%">
        <input type="text" name="url2" size="22" value="{$url2}"/></td>
</tr>

<tr>
    <td valign="middle" align="left" width="25%">{$AltField1}</td>
    <td class="dbTxt" valign="middle" align="left" width="25%">
        <input type="text" name="altfield1" size="22" value="{$altfield1}"/></td>
    <td valign="middle" align="left" width="25%">{$AltField2}</td>
    <td class="dbTxt" valign="middle" align="left" width="25%">
        <input type="text" name="altfield2" size="22" value="{$altfield2}"/></td>
</tr>

<tr>
    <td>&nbsp;</td>
</tr>

<tr>
    <td valign="middle" align="left" width="25%">{$Bank_Name}</td>
    <td class="dbTxt" valign="middle" align="left" width="25%">
        <input type="text" name="bankname" size="22" value="{$bankname}"/></td>
    <td valign="middle" align="left" width="25%"></td>
    <td class="dbTxt" valign="middle" align="left" width="25%"></td>
</tr>

<tr>
    <td valign="middle" align="left" width="25%">{$Bank_Account}</td>
    <td class="dbTxt" valign="middle" align="left" width="25%">
        <input type="text" name="bankaccount" size="22" value="{$bankaccount}"/></td>
    <td valign="middle" align="left" width="25%">{$Bank_Number}</td>
    <td class="dbTxt" valign="middle" align="left" width="25%">
        <input type="text" name="banknumber" size="22" value="{$banknumber}"/></td>
</tr>

<tr>
    <td valign="middle" align="left" width="25%">{$Bank_Iban}</td>
    <td class="dbTxt" valign="middle" align="left" width="25%">
        <input type="text" name="bankiban" size="22" value="{$bankiban}"/></td>
    <td valign="middle" align="left" width="25%">{$Bank_Bic}</td>
    <td class="dbTxt" valign="middle" align="left" width="25%">
        <input type="text" name="bankbic" size="22" value="{$bankbic}"/></td>
</tr>

<tr>
    <td>&nbsp;</td>
</tr>

<tr>
    <td>&nbsp;</td>
</tr>

<tr>
    <td valign="middle" align="left" width="25%">{$User_Active}</td>
    <td class="dbTxt" valign="middle" align="left" width="25%">
        <select class="choice200" name="useractive" title="{$User_Active}">
            <optgroup label="{$User_Active}" title="{$User_Active}">

                {foreach item=user_active from=$choice_yes_no}

                {foreach key=key item=item from=$user_active}

                {if $useractive and ( $useractive eq $key)}
                <option label="{$item}" title="{$item}" value="{$key}" selected="selected">{$item}</option>
                {elseif $useractive and ( $useractive neq $key )}
                <option label="{$item}" title="{$item}" value="{$key}">{$item}</option>
                {else}
                <option label="{$item}" title="{$item}" value="2" selected="selected">{$item}</option>
                {/if}

                {/foreach}

                {/foreach}

            </optgroup>
        </select></td>
</tr>

<tr>
    <td class="dbTxt" valign="middle" align="left" width="25%" colspan="2"></td>
</tr>

<tr>
    <td valign="middle" align="left" width="25%"><b>{$Username}</b></td>
    <td class="dbTxt" valign="middle" align="left" width="25%">
        <input type="text" name="username" size="22" value="{$username}"/></td>
    <td valign="middle" align="left" width="25%">{$Language}</td>
    <td class="dbTxt" valign="middle" align="left" width="25%">
        <select class="choice200" name="userlanguage" title="{$Language}">
            <optgroup label="{$Language}" title="{$Language}">

                {foreach item=language from=$choose_language}

                {foreach key=key item=item from=$language}

                {if $userlanguage and ( $userlanguage == $key)}
                <option label="{$item}" title="{$item}" value="{$key}" selected="selected">{$item}</option>
                {else}
                <option label="{$item}" title="{$item}" value="{$key}">{$item}</option>
                {/if}

                {/foreach}

                {/foreach}

            </optgroup>
        </select></td>
</tr>

<tr>
    <td valign="middle" align="left" width="25%"><b>{$Password}</b></td>
    <td class="dbTxt" valign="middle" align="left" width="25%">
        <input type="password" name="password1" size="22" value=""/></td>
    <td valign="middle" align="left" width="25%"><b>{$Repeat_Password}</b></td>
    <td class="dbTxt" valign="middle" align="left" width="25%">
        <input type="password" name="password2" size="22" value=""/></td>
</tr>

<tr>
    <td>&nbsp;</td>
</tr>

<tr>
    <td valign="top" align="center" colspan="4">
        <input type="hidden" name="page" value="{$page}"/> <input type="hidden" name="infoID" value="{$infoID}"/>
        <input type="hidden" name="Customer" value="{$Customer}"/>
        <input type="hidden" name="Order" value="{$Order}"/> <input type="hidden" name="Sort" value="{$Sort}"/>
        <input type="submit" class="button" title="{$InsertMsg}" value="{$InsertMsg}"/></td>
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
