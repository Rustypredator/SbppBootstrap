{if !$dashboard_text}
    {else}
    <div class="panel panel-info">
        <div class="panel-heading"></div>
        <div class="panel-body">
            {$dashboard_text}
        </div>
    </div>
{/if}

<div id="front-servers">
	{include file='page_servers.tpl'}
</div>

<div class="panel panel-primary">
    <div class="panel-heading">
        <span>Latest Added Bans</span>
        <span class="pull-right">Total bans: {$total_bans}</span>
    </div>
    <table class="table table-striped panel-body">
        <thead>
            <th>MOD</th>
            <th>Date/Time</th>
            <th>Name</th>
            <th>Length</th>
        </thead>
        <tbody>
            {foreach from=$players_banned item=player}
                <tr onclick="{$player.link_url}">
                    <td align="center"><img src="images/games/{$player.icon}" width="16" alt="MOD" title="MOD" /></td>
                    <td align="center">{$player.created}</td>
                    <td>
                        {if empty($player.short_name)}
                            <i><font color="#677882">no nickname present</font></i>
                        {else}
                            {$player.short_name|escape:'html'}
                        {/if}
                    </td>
                    <td>{$player.length}{if $player.unbanned} ({$player.ub_reason}){/if}</td>
                </tr>
            {/foreach}
        </tbody>
    </table>
</div>

<div class="panel panel-primary col-sm-12 col-md-6">
    <div class="panel-heading">
        <span>Latest Comm Blocks</span>
        <span class="pull-right">Total blocks: {$total_comms}</span>
    </div>
    <table class="table table-striped table-hover panel-body">
        <thead>
            <th>Type</th>
            <th>Date/Time</th>
            <th>Name</th>
            <th>Length</th>
        </thead>
        <tbody>
        {foreach from=$players_blocked item=player}
            <tr {if $dashboard_lognopopup}onclick="{$player.link_url}"{else}onclick="{$player.popup}"{/if}>
                <td align="center"><img src="{$player.type}" width="16" alt="MOD" title="MOD" /></td>
                <td>{$player.created}</td>
                <td>
                    {if empty($player.short_name)}
                        <i><font color="#677882">no nickname present</font></i>
                    {else}
                        {$player.short_name|escape:'html'}
                    {/if}
                </td>
                <td>{$player.length}{if $player.unbanned} ({$player.ub_reason}){/if}</td>
            </tr>
        {/foreach}
        </tbody>
    </table>
</div>

<div class="panel panel-primary col-sm-12 col-md-6">
    <div class="panel-heading">
        <span>Latest Players Blocked</span>
        <span class="pull-right">Total Stopped: {$total_blocked}</span>
    </div>
    <table class="table table-striped table-hover panel-body">
        <thead>
            <th>&nbsp;</th>
            <th>Date/Time</th>
            <th>Name</th>
        </thead>
        <tbody>
            {foreach from=$players_blocked item=player}
                <tr {if $dashboard_lognopopup}onclick="{$player.link_url}"{else}onclick="{$player.popup}"{/if}>
                    <td></td>
                    <td>{$player.date}</td>
                    <td>{$player.short_name|escape:'html'}</td>
                </tr>
            {/foreach}
        </tbody>
    </table>
</div>
