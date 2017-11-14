<?php if ($allfilters || ($filter_price_status && $filter_price_min && $filter_price_max) || ($filter_subcategories != 'false' && $subcategories)) { ?>
	<div id="revfilter">
		<form id="revfilter_form" action="/index.php?" method="get">
			<div id="revfilter_box_open"><i class="fa fa-sliders"></i>&nbsp;&nbsp;<?php echo $title; ?></div>
			<div id="revfilter_box" class="panel panel-default">
				<?php if ($title) { ?>
					<h2 class="zag_block panel-heading"><i class="fa fa-sliders"></i>&nbsp;&nbsp;<?php echo $title; ?><div class="clear_filter"><i id="revfilter_reset" class="fa fa-refresh"></i></div></h2>
				<?php } ?>
				<div class="list-group">
					<?php if ($filter_price_status && $filter_price_min && $filter_price_max) { ?>
						<div class="option_box">
							<div class="option_name"><?php echo $text_price; ?>:<i class="fa fa-toggle-on on"></i><i class="fa fa-toggle-off off"></i></div>
							<div class="price_slider collapsible">
								<input type="text" id="price_revfilter" name="filter_price" style="display: none;" />
							</div>
						</div>
					<?php } ?>
					<?php if ($filter_instock) { ?>
						<div class="option_box">
							<div class="option_name <?php if (isset($filter_instock_vid) && $filter_instock_vid) { ?>hided<?php } ?>"><?php echo $text_instock; ?>:<i class="fa fa-toggle-on on"></i><i class="fa fa-toggle-off off"></i></div>
							<div class="collapsible" <?php if (isset($filter_instock_vid) && $filter_instock_vid) { ?>style="display: none;"<?php } ?>>
								<label>
									<input type="checkbox" class="filtered" name="filter_instock" />
									<span for="instock"><?php echo $text_instock_on; ?></span></label>
							</div>
						</div>
					<?php } ?>
					<?php if ($filter_gr != 'false' && !empty($allfilters_gr)) { ?>
						<div class="option_box">
							<div class="option_name <?php if (isset($filter_gr_vid) && $filter_gr_vid) { ?>hided<?php } ?>"><?php echo $text_revf_group; ?>:<i class="fa fa-toggle-on on"></i><i class="fa fa-toggle-off off"></i></div>
							<div class="collapsible" <?php if (isset($filter_gr_vid) && $filter_gr_vid) { ?>style="display: none;"<?php } ?>>
								<?php if ($filter_gr == 'select') { ?>
									<select name="filter_gr" class="form-control">
										<option value=""><?php echo $text_none; ?></option>
										<?php foreach ($allfilters_gr as $key => $filter) { ?>
											<option id="groups" value="<?php echo $filter['id']; ?>">
												<?php echo $filter['title']; ?>
											</option>
										<?php } ?>
									</select>
								<?php } else if ($filter_gr == 'radio') { ?>
									<?php foreach ($allfilters_gr as $key => $filter) { ?>
										<div id="<?php echo $filter['id']; ?>" class="radio">
											<label>
												<input type="radio" name="filter_gr" value="<?php echo $filter['id']; ?>" /><?php echo $filter['title']; ?>
											</label>
										</div>
									<?php } ?>
								<?php } ?>
							</div>
						</div>
					<?php } ?>
					<?php if ($filter_subcategories != 'false' && $subcategories) { ?>
						<div class="option_box">
							<div class="option_name <?php if (isset($filter_subcategories_vid) && $filter_subcategories_vid) { ?>hided<?php } ?>"><?php echo $text_subcategories; ?>:<i class="fa fa-toggle-on on"></i><i class="fa fa-toggle-off off"></i></div>
							<div class="collapsible" <?php if (isset($filter_subcategories_vid) && $filter_subcategories_vid) { ?>style="display: none;"<?php } ?>>
								<div id="subcategories" class="form-group" data-type="<?php echo $filter_subcategories; ?>">
									<?php if ($filter_subcategories == 'checkbox') { ?>
											<?php foreach ($subcategories as $filter_v) { ?>
													<div id="subcategories" class="checkbox">
														<label>
															<input type="checkbox" name="filter_categories[]" value="<?php echo $filter_v['category_id']; ?>" /><?php echo $filter_v['name']; ?>
														</label>
														<?php if ($settings['filter_count_products']) { ?>
															<?php if ($filter_v['count']) { ?>
																<span class="revlabel pull-right"><?php echo $filter_v['count']; ?></span>
															<?php } ?>
														<?php } ?>
													</div>
											<?php } ?>
									<?php } else if ($filter_subcategories == 'radio') { ?>
											<?php foreach ($subcategories as $filter_v) { ?>
													<div id="subcategories" class="radio">
														<label>
															<input type="radio" name="filter_categories" value="<?php echo $filter_v['category_id']; ?>" /><?php echo $filter_v['name']; ?>
														</label>
														<?php if ($settings['filter_count_products']) { ?>
															<?php if ($filter_v['count']) { ?>
																<span class="revlabel pull-right"><?php echo $filter_v['count']; ?></span>
															<?php } ?>
														<?php } ?>
													</div>
											<?php } ?>
									<?php } else if ($filter_subcategories == 'select') { ?>
										<select name="filter_categories" class="form-control">
											<option value=""><?php echo $text_none; ?></option>
											<?php foreach ($subcategories as $filter_v) { ?>
												<option id="subcategories" value="<?php echo $filter_v['category_id']; ?>">
													<?php echo $filter_v['name']; ?>
													<?php if ($settings['filter_count_products']) { ?>
														<?php if ($filter_v['count']) { ?>
															(<?php echo $filter_v['count']; ?>)
														<?php } ?>
													<?php } ?>
												</option>
											<?php } ?>
										</select>
									<?php } ?>
								</div>
							</div>
						</div>
					<?php } ?>
					<?php if ($allfilters) { ?>
						<?php foreach ($allfilters as $key => $filter) { ?>
							<div class="option_box<?php if ($filter['type'] == 'slider') { ?> hidden-xs hidden-sm<?php } ?>">
								<div class="option_name <?php if (isset($filter['vid']) && $filter['vid']) { ?>hided<?php } ?>"><?php echo $filter['title']; ?>:<i class="fa fa-toggle-on on"></i><i class="fa fa-toggle-off off"></i></div>
								<div class="collapsible" <?php if (isset($filter['vid']) && $filter['vid']) { ?>style="display: none;"<?php } ?>>
									<div id="<?php echo $filter['id']; ?>" class="form-group" data-type="<?php echo $filter['type']; ?>">
										<?php if ($filter['type'] == 'checkbox') { ?>
												<?php foreach ($filter['values'] as $key => $filter_v) { ?>
														<div id="<?php echo $filter_v['id']; ?>" class="checkbox">
															<label>
																<input type="checkbox" name="<?php echo $filter['name']; ?>[]" value="<?php echo $filter_v['val']; ?>" /><?php echo $filter_v['name']; ?>
															</label>
															<?php if ($settings['filter_count_products']) { ?>
																<?php if ($filter_v['count']) { ?>
																	<span class="revlabel pull-right"><?php echo $filter_v['count']; ?></span>
																<?php } ?>
															<?php } ?>
														</div>
												<?php } ?>
										<?php } else if ($filter['type'] == 'radio') { ?>
												<?php foreach ($filter['values'] as $key => $filter_v) { ?>
														<div id="<?php echo $filter_v['id']; ?>" class="radio">
															<label>
																<input type="radio" name="<?php echo $filter['name']; ?>" value="<?php echo $filter_v['val']; ?>" /><?php echo $filter_v['name']; ?>
															</label>
															<?php if ($settings['filter_count_products']) { ?>
																<?php if ($filter_v['count']) { ?>
																	<span class="revlabel pull-right"><?php echo $filter_v['count']; ?></span>
																<?php } ?>
															<?php } ?>
														</div>
												<?php } ?>
										<?php } else if ($filter['type'] == 'select') { ?>
											<select name="<?php echo $filter['name']; ?>" class="form-control">
												<option value=""><?php echo $text_none; ?></option>
												<?php foreach ($filter['values'] as $key => $filter_v) { ?>
													<option id="<?php echo $filter_v['id']; ?>" value="<?php echo $filter_v['val']; ?>">
														<?php echo $filter_v['name']; ?>
														<?php if ($settings['filter_count_products']) { ?>
															<?php if ($filter_v['count']) { ?>
																(<?php echo $filter_v['count']; ?>)
															<?php } ?>
														<?php } ?>
													</option>
												<?php } ?>
											</select>
										<?php } else if ($filter['type'] == 'slider') { ?>
											<div class="slidewrapper">
												<input type="text" id="revf_slider<?php echo $filter['id']; ?>" name="<?php echo $filter['name']; ?>" />
											</div>
										<?php } else if ($filter['type'] == 'image') { ?>
											<?php foreach ($filter['values'] as $key => $filter_v) { ?>
												<div id="<?php echo $filter_v['id']; ?>" class="image-filter">
													<?php if ($settings['filter_count_products']) { ?>
														<label>
															<input type="checkbox" name="<?php echo $filter['name']; ?>" value="<?php echo $filter_v['val']; ?>" />
															<img class="img-responsive" src="<?php echo $filter_v['image']; ?>" alt="<?php echo $filter_v['name']; ?>"/><?php echo $filter_v['name']; ?>
														</label>
														<?php if ($filter_v['count']) { ?>
															<span class="revlabel pull-right"><?php echo $filter_v['count']; ?></span>
														<?php } ?>
													<?php } else { ?>
														<label class="without_count_products">
															<input type="checkbox" name="<?php echo $filter['name']; ?>" value="<?php echo $filter_v['val']; ?>" />
															<img data-toggle="tooltip" class="img-responsive" src="<?php echo $filter_v['image']; ?>" alt="<?php echo $filter_v['name']; ?>" title="<?php echo $filter_v['name']; ?>" />
														</label>
													<?php } ?>
												</div>
											<?php } ?>
										<?php } ?>
									</div>
								</div>
							</div>
						<?php } ?>
					<?php } ?>
				</div>
				<?php if (!$settings['filter_sposob']) { ?>
					<div class="form-group">
						<button type="submit" class="app_filter btn btn-primary btn-block" data-loading-text="<?php echo $text_loading ?>"><?php echo $text_find; ?></button>
					</div>
				<?php } ?>
			</div>
			<input type="hidden" name="isrevfilter" value="1" />
			<input type="hidden" name="route" value="product/category" />
			<input type="hidden" name="path" value="<?php echo $path; ?>" />
			<input type="hidden" name="sort" value="<?php echo $sort; ?>" />
			<input type="hidden" name="order" value="<?php echo $order; ?>" />
			<input type="hidden" name="limit" value="<?php echo $limit; ?>" />
		</form>
	</div>
	<script type="text/javascript"><!--
	$(".option_box .option_name").click(function () {
		$(this).siblings(".collapsible").toggle();
		$(this).toggleClass("hided")
	});
	if($(window).width() < 991) {
		$('#column-left #revfilter_box').css('height', $(window).height());
		<?php if ($settings['filter_sposob']) { ?>
			$('#revfilter_box').append('<div style="margin:15px 0; text-align:center"><button class="app_filter btn btn-primary btn-block" data-loading-text="<?php echo $text_loading ?>"><?php echo $text_find; ?></button></div>');
		<?php } ?>
		$('#revfilter_box_open').on('click', function() {
			$('#column-left').addClass('show');
			$('#revfilter_box_open').css('opacity', '0');
			document.body.style.overflow = 'hidden';
		});	
		$('.app_filter, .clear_filter').on('click', function() {
			$('#column-left').removeClass('show');
			$('#revfilter_box_open').css('opacity', '0.9');
			document.body.style.overflow = 'visible';
		});
	}
	<?php if ($filter_price_status && $filter_price_min && $filter_price_max) { ?>
		$("#price_revfilter").ionRangeSlider( {
			type: 'double',
			force_edges: true,
			min: <?php echo $filter_price_min; ?>,
			max: <?php echo $filter_price_max; ?>,
			from: <?php echo $filter_price_min; ?>,
			to: <?php echo $filter_price_max; ?>,
			prefix: '<?php echo $prefix; ?>',
			postfix: '<?php echo $postfix; ?>',
			<?php if ($settings['filter_price_setka']) { ?>
				grid: true,
				step: 10,
				grid_num: 4,
			<?php } ?>
			<?php if ($settings['filter_sposob']) { ?>
				onFinish: function (data) {
					if($(window).width() > 991) {
						$('#revfilter_form').submit();
					}
				}
			<?php } ?>
		});
	<?php } ?>
	<?php if (isset($allfilters) && is_array($allfilters)) { ?>
		<?php foreach ($allfilters as $key => $filter) { ?>
			<?php if (isset($filter['values']) && is_array($filter['values'])) {
				$filter_vs = array();
				foreach ($filter['values'] as $filter_v) {
					$filter_vs[] = $filter_v['id'];
				}
				$allfilters[$filter['id']] = $filter_vs;
			} ?>
			<?php if (isset($filter['type']) && ($filter['type'] == 'slider')) { ?>
					var values<?php echo $key ?> = [
						<?php if (isset($filter['values'])) { ?>
							<?php foreach ($filter['values'] as $filter_v) { ?>
								"<?php echo $filter_v['val']; ?>",
							<?php } ?>
						<?php } ?>
					];
					$("#revf_slider<?php echo $filter['id']; ?>").ionRangeSlider( {
						type: 'double',
						force_edges: true,
						values: values<?php echo $key; ?>,
						prettify_enabled: true,
						grid: <?php echo ($settings['filter_setka'] ? 'true' : 'false') ?>,
						prettify: function (num) {
							<?php if (isset($filter['values'])) { ?>
								<?php foreach ($filter['values'] as $filter_v) { ?>
									if (num == "<?php echo $filter_v['val'] ?>") { return "<?php echo $filter_v['name']; ?>"; }
								<?php } ?>
							<?php } ?>
						},
						onFinish: function (data) {
							var load_filters = false;
							var result = [];
							for (var i = 0; i < values<?php echo $key; ?>.length; i++) {
								if (i == data.from) {
									load_filters = true;
								}
								if (load_filters) {
									result.push(values<?php echo $key; ?>[i]);
								}
								if (i == data.to) {
									load_filters = false;
								}
							}
							data.input.val(result.join(";"));
							<?php if ($settings['filter_sposob']) { ?>
								if($(window).width() > 991) {
									$('#revfilter_form').submit();
								}
							<?php } ?>
						}
					});
					$("#revf_slider<?php echo $filter['id']; ?>").val("");
			<?php } ?>
		<?php } ?>
	<?php } ?>
	$(document).ready(function () {
		if($(window).width() > 991) {
			sortir = 'auto';
		} else { 
			sortir = 'manual';
		}
		$('#revfilter_form').revFilter( {
			selector: '#content .revfilter_container',
			<?php if ($settings['filter_sposob']) { ?>
				mode: sortir,
			<?php } else { ?>
				mode: 'manual',
			<?php } ?>
			revload: true,
			<?php if ($settings['filter_count_products']) { ?>
				count_show: true,
			<?php } ?>
			reset_id: 'revfilter_reset',
			filter_data: <?php echo $filter_data; ?>
		});
	});
	//--></script>
<?php } ?>