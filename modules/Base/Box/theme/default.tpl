{if !$logged}

<div id="Base_Box__login">
	<div class="status">{$status}</div>
	<div class="entry">{$login_form}</div>
</div>

{else}

	<div id="top_bar" class="nonselectable" style="width:100%">
		<div id="MenuBar">
		<table id="top_bar_1" cellspacing="0" cellpadding="0" border="0">
		<tbody>
			<tr>
				<td style="empty-cells: hide; width: 8px;"></td>
				<td class="menu-bar">{$menu}</td>
				<td>{$login}</td>
				<td style=" empty-cells: hide; width: 7px;"></td>
				<td class="home-bar" {$home.href}>
					<div id="home-bar1">
						<div class="home-bar-icon"></div>
						<div class="home-bar-text">
							{$home.label}
						</div>
					</div>
				</td>
				<td style="empty-cells: hide; width: 6px;"></td>
				<td class="top_bar_black filler"></td>
				<td class="top_bar_black powered" nowrap="1">
					<div>
						<a href="http://epe.si" target="_blank" style="color:white;"><b>EPESI</b> powered</a>&nbsp;
					</div>
					<div>{$version_no}</div>
				</td>
				{if isset($donate)}
					<td class="top_bar_black donate" nowrap="1">{$donate}</td>
				{/if}
				<td style="empty-cells: hide; width: 6px;"></td>
				<td style="empty-cells: hide; width: 6px;"></td>
				<td class="top_bar_black module-indicator"><div id="module-indicator">{if $moduleindicator}{$moduleindicator}{else}&nbsp;{/if}</div></td>
				<td style="empty-cells: hide; width: 8px;"></td>
			</tr>
		</tbody>
		</table>
		</div>
		<div id="ShadowBar" style="display: none;"></div>
		<div id="ActionBar">
			<table id="top_bar_2" cellspacing="0" cellpadding="0" border="0">
			<tbody>
				<tr>
					<td style="empty-cells: hide; width: 8px;"></td>
					<td class="logo"><div class="shadow_css3_logo_border">{$logo}</div></td>
					<td style="empty-cells: hide; width: 6px;"></td>
					<td class="icons">
						<div class="shadow_css3_icons_border">
							{$actionbar}
						</div>
					</td>
					<td id="launchpad_button_section_spacing" style="empty-cells: hide; width: 6px; display:none;"></td>
					<td class="icons_launchpad" id="launchpad_button_section">
						<div class="shadow_css3_icons_launchpad_border">
							<button type='button' data-toggle='modal' data-target='#launchpadModal' class="btn btn-default"><i class="fa fa-cubes fa-3x"></i><div>Launchpad</div></button>
						</div>
					</td>

					<td style="empty-cells: hide; width: 6px;"></td>
					<td id="login-search-td">
						<div class="shadow_css3_login-search-td_border">
								<div class="login"></div>
								<div class="search" id="search_box">{$search}</div>
						</div>
					</td>
					<td style="empty-cells: hide; width: 8px;"></td>
				</tr>
			</tbody>
			</table>
		</div>
	</div>
	<!-- -->
	<div id="content">
		<div id="content_body" style="top: 50px;">
			<center>{$main}</center>
		</div>
	</div>
	{$launchpad}
	{$filter}

{$status}

{literal}
<style type="text/css">
div > div#top_bar { position: fixed;}
div > div#bottom_bar { position: fixed;}
</style>

{/literal}

{/if}
