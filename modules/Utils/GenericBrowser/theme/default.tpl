<div>
{if isset($form_data)}
{$form_data.javascript}

<form {$form_data.attributes}>
{$form_data.hidden}
{/if}
	
{if isset($order) || isset($letter_links)}

<table id="letters-search">
	<tbody>
		<tr>
			<!-- Custom label -->
			<td>
				{if isset($custom_label)}
				{$custom_label}
				{/if}
			</td>
			<!-- QuickJump -->
			<td class="letters">
				{if isset($letter_links)}
				{foreach key=k item=link from=$letter_links}
				{$link}
				{/foreach}
				{/if}
			</td>
			<!-- Advanced / Simple Search -->
			<td style="text-align: right;">
				{if isset($form_data.search)}
					<div>
					<table class="Utils_GenericBrowser__search" border="0" cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								{*<td class="label">{$form_data.search.label}</td>*}
								<td>{$form_data.search.html}</td>
								<td class="submit">{$form_data.submit_search.html}</td>
								<td class="advanced">{$adv_search}</td>
							</tr>
						</tbody>
					</table>
					</div>
				{else}
					{php}
						$cols = $this->get_template_vars('cols');
						$search_fields = $this->get_template_vars('search_fields');
						$i=0;
						foreach($cols as $k=>$v){
							if(!isset($search_fields[$i])) {
								$i++;
								continue;
							}
							$cols[$k]['label'] = $cols[$k]['label'].$search_fields[$i];
							$i++;
						}
						$this->assign('cols',$cols);
					{/php}
					{if isset($form_data.submit_search)}
					<div style="padding-left: 20px; text-align: left;">
					<table class="Utils_GenericBrowser__search" border="0" cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<td class="submit">{$form_data.submit_search.html}</td>
								<td class="advanced">{$adv_search}</td>
							</tr>
						</tbody>
					</table>
					</div>
					{/if}
				{/if}
			</td>
		</tr>
	</tbody>
</table>

{/if}

<!-- SHADOW BEGIN -->
	<div class="layer" style="padding: 9px; width: 98%;">
		<div class="content_shadow">
<!-- -->

<div style="padding: 2px; background-color: #FFFFFF;">

{html_table_epesi table_attr='id="Utils_GenericBrowser" cellspacing="0" cellpadding="0" style="width:100%;"' loop=$data cols=$cols}

</div>

<!-- SHADOW END -->
 		</div>
		<div class="shadow-top">
			<div class="left"></div>
			<div class="center"></div>
			<div class="right"></div>
		</div>
		<div class="shadow-middle">
			<div class="left"></div>
			<div class="right"></div>
		</div>
		<div class="shadow-bottom">
			<div class="left"></div>
			<div class="center"></div>
			<div class="right"></div>
		</div>
	</div>
<!-- -->

<table id="Utils_GenericBrowser__navigation" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td style="width: 50%; text-align: left;">
			{if isset($order)}
				{$order}&nbsp;&nbsp;&nbsp;<b>{$reset}</b>
			{/if}		
		</td>
	
		<td>{if $first}<img src="{$theme_dir}/images/first.png">{/if}</td><td>{$first}</td>
		<td>{if $prev}<img src="{$theme_dir}/images/prev.png">{/if}</td><td>{$prev}</td>
		
		<td nowrap>{$summary}</td>
		
		<td>{$next}</td><td>{if $next}<img src="{$theme_dir}/images/next.png">{/if}</td>
		<td>{$last}</td><td>{if $last}<img src="{$theme_dir}/images/last.png">{/if}</td>

		<td style="width: 50%; text-align: right;">
			{if isset($form_data.per_page)}
				{$form_data.per_page.label}&nbsp;&nbsp;&nbsp;{$form_data.per_page.html}
			{/if}
		</td>
	</tr>
</table>

{if isset($form_data)}
</form>
{/if}
</div>
