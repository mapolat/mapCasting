{*
linkbar.tpl

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
{if $smarty.session.SuperUser and ( $smarty.session.SuperUser eq $Root )}
<p id="top10" align="center">
    [&nbsp;<a accesskey="A" class="nmenulink" title="{$Addressbook}" href="../addressbook/list.php?{$Session}">{$Addressbook}</a>
    |&nbsp;&nbsp;<a accesskey="R" class="nmenulink" title="{$Reports}"
                    href="../reports/index.php?{$Session}">{$Reports}</a>&nbsp;
    |&nbsp;&nbsp;<a accesskey="L" class="nmenulink" title="{$Logout}" href="../login/suend.php?{$Session}">{$Logout}</a>&nbsp;]
</p>
{else}
<p id="top10" align="center">
    [&nbsp;<a accesskey="A" class="nmenulink" title="{$Addressbook}" href="../addressbook/list.php?{$Session}">{$Addressbook}</a>
    |&nbsp;&nbsp;<a accesskey="R" class="nmenulink" title="{$Reports}"
                    href="../reports/index.php?{$Session}">{$Reports}</a>&nbsp;
    |&nbsp;&nbsp;<a accesskey="L" class="nmenulink" title="{$Logout}"
                    href="../login/logout.php?{$Session}">{$Logout}</a>&nbsp;]</p>
{/if}
