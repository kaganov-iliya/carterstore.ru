<?php if ($settings['revcheckout_country'] || $settings['revcheckout_region'] || $settings['revcheckout_index'] || $settings['revcheckout_city'] || $settings['revcheckout_adres'] || $custom_fields) { ?>
	<div <?php echo !$is_shipping ? 'class="hide"' : ''; ?>>
		<div class="col-sm-12 ship_metod">
			<div class="panel panel-default">
				<div class="panel-heading">
					 <h3 class="panel-title"><?php echo $text_revcheckout_address; ?></h3>
				</div>
				<div class="panel-body">
					<?php if ($addresses && $settings['revcheckout_reg_adres']) { ?>
						<?php if ($customer_id) { ?>
							<?php if(isset($address_1) && isset($city) && isset($zone) && isset($country)) { ?>
								<div class="radio">
									<label class="input"><input type="radio" name="address" value="existing" <?php echo !$new_address ? 'checked="checked"' : ''; ?> onclick="$('#payment-address-new').hide();" id="payment_address" /><span></span><span><?php echo $text_address_existing; ?></span></label>
								</div>
								<div id="payment-existing">
									<?php foreach ($addresses as $address) { ?>
										<input type="hidden" name="address_id" value="<?php echo $address['address_id']; ?>" />
										<?php if ($address['firstname'] != '' || $address['lastname'] != '') { ?>
											<?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?><br>
										<?php } ?>
										<?php if ($address['postcode'] != '') { ?>
											<?php echo $address['postcode']; ?>, 
										<?php } ?>
										<?php if ($address['zone'] != '') { ?>
											<?php echo $address['zone']; ?>, 
										<?php } ?>
										<?php if ($address['city'] != '') { ?>
											<?php echo $address['city']; ?>, 
										<?php } ?>
										<?php if ($address['address_1'] != '') { ?>
											<?php echo $address['address_1']; ?>
										<?php } ?>
									<?php } ?>
								</div>
							<?php } else { ?>
								<script type="text/javascript"><!--
									$(document).ready(function() {
										$('#new_payment_address').trigger('click');
									});
								--></script>
							<?php } ?>
						<?php } ?>
						<?php if ($customer_id) { ?>
							<div class="radio">
								<label class="input"><input type="radio" name="address" value="new" <?php echo $new_address ? 'checked="checked"' : ''; ?> onclick="$('#payment-address-new').show();" id="new_payment_address"/><span></span><span><?php echo $text_revcheckout_address_new; ?></span></label>
							</div>
						<?php } ?>
					<?php } ?>
					<div class="row">
						<div id="payment-address-new" <?php if ($customer_id && $addresses && !$new_address && $settings['revcheckout_reg_adres']) {?> style="display:none"<?php }?>>
							<input type="hidden" name="company" value="" />
							<input type="hidden" name="company_id" value="" />
							<input type="hidden" name="tax_id" value="" />
							<input type="hidden" name="default" value="" />
							<?php if ($settings['revcheckout_country']) { ?>
								<div class="form-group <?php if ($settings['revcheckout_country'] == '2') { ?>required<?php } ?>">
									<label class="col-xs-5 t-ar control-label"><?php echo $entry_country; ?>:</label>
									<div class="col-xs-7">
										<select name="country_id" id="input-revcheckout_country" class="form-control">
											<option value=""><?php echo $text_select; ?></option>
											<?php foreach ($countries as $country) { ?>
											<?php if ($country['country_id'] == $country_id) { ?>
											<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
											<?php } else { ?>
											<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
											<?php } ?>
											<?php } ?>
										</select>
									</div>
								</div>
							<?php } else { ?>
								<!--<input type="hidden" name="country_id" value="<?php echo $config_country_id; ?>" /> -->
								<input type="hidden" name="country_id" value="" />
							<?php } ?>
							<?php if ($settings['revcheckout_region']) { ?>
								<div class="form-group <?php if ($settings['revcheckout_region'] == '2') { ?>required<?php } ?>">
									<label class="col-xs-5 t-ar control-label"><?php echo $text_revcheckout_region; ?>:</label>
									<div class="col-xs-7">
										<select name="zone_id" id="input-payment-zone" class="form-control"></select>
									</div>
								</div>
							<?php } else { ?>
								<input type="hidden" name="zone_id" value="" />
							<?php } ?>
							<?php if ($settings['revcheckout_index']) { ?>
								<div class="form-group <?php if ($settings['revcheckout_index'] == '2') { ?>required<?php } ?>">
									<label class="col-xs-5 t-ar control-label"><?php echo $entry_postcode; ?>:</label>
									<div class="col-xs-7">
										<input type="text" name="postcode" value="<?php if (isset($postcode)) echo $postcode;?>" class="form-control" />
									</div>
								</div>
							<?php } else { ?>
								<input type="hidden" name="postcode" value="" />
							<?php } ?>
							<?php if ($settings['revcheckout_city']) { ?>
								<div class="form-group <?php if ($settings['revcheckout_city'] == '2') { ?>required<?php } ?>">
									<label class="col-xs-5 t-ar control-label"><?php echo $entry_city; ?>:</label>
									<div class="col-xs-7">
										<input type="text" name="city" value="<?php if (isset($city)) echo $city;?>" class="form-control" />
									</div>
								</div>
							<?php } else { ?>
								<input type="hidden" name="city" value="" />
							<?php } ?>
							<?php if ($settings['revcheckout_adres']) { ?>
								<div class="form-group <?php if ($settings['revcheckout_adres'] == '2') { ?>required<?php } ?>">
									<label class="col-xs-5 t-ar control-label"><?php echo $entry_address_1; ?>:</label>
									<div class="col-xs-7">
										<input type="text" name="address_1" value="<?php if (isset($address_1)) echo $address_1;?>" class="form-control" />
									</div>
								</div>
							<?php } else { ?>
								<input type="hidden" name="address_1" value="" />
							<?php } ?>
							<?php if (isset($custom_fields)) foreach ($custom_fields as $custom_field) { ?>
								<?php if ($custom_field['location'] == 'address') { ?>
									<?php if ($custom_field['type'] == 'select') { ?>
										<div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
											<label class="col-xs-5 t-ar control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
											<div class="col-xs-7">
												<select name="custom_field[address][<?php echo $custom_field['custom_field_id']; ?>]" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control">
													<option value=""><?php echo $text_select; ?></option>
													<?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
														<option value="<?php echo $custom_field['name'].': '.$custom_field_value['name']; ?>"><?php echo $custom_field_value['name']; ?></option>
													<?php } ?>
												</select>
											</div>
										</div>
									<?php } ?>
									<?php if ($custom_field['type'] == 'radio') { ?>
										<div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
											<label class="col-xs-5 t-ar control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
											<div class="col-xs-7">
												<div id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>">
													<?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
														<div class="radio">
															<label class="input"><input type="radio" name="custom_field[address][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['name'].': '.$custom_field_value['name']; ?>" /><span></span><span><?php echo $custom_field_value['name']; ?></span></label>
														</div>
													<?php } ?>
												</div>
											</div>
										</div>
									<?php } ?>
									<?php if ($custom_field['type'] == 'checkbox') { ?>
										<div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
											<label class="col-xs-5 t-ar control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
											<div class="col-xs-7">
												<div id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>">
													<?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
														<div class="checkbox">
															<label class="input"><input type="checkbox" name="custom_field[address][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field['name'].': '.$custom_field_value['name']; ?>" /><span></span><span><?php echo $custom_field_value['name']; ?></span></label>
														</div>
													<?php } ?>
												</div>
											</div>
										</div>
									<?php } ?>
									<?php if ($custom_field['type'] == 'text') { ?>
										<div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
											<label class="col-xs-5 t-ar control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
											<div class="col-xs-7">
												<input type="text" name="custom_field[address][<?php echo $custom_field['custom_field_id']; ?>]" value="" placeholder="<?php echo $custom_field['value']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" <?php if ($custom_field['mask']) { ?> data-mask="<?php echo $custom_field['mask']; ?>" <?php } ?> />
											</div>
										</div>
									<?php } ?>
									<?php if ($custom_field['type'] == 'textarea') { ?>
										<div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
											<label class="col-xs-5 t-ar control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
											<div class="col-xs-7">
												<textarea name="custom_field[address][<?php echo $custom_field['custom_field_id']; ?>]" rows="3" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" placeholder="<?php echo $custom_field['value']; ?>" <?php if ($custom_field['mask']) { ?> data-mask="<?php echo $custom_field['mask']; ?>" <?php } ?>></textarea>
											</div>
										</div>
									<?php } ?>
									<?php if ($custom_field['type'] == 'file') { ?>
										<div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
											<label class="col-xs-5 t-ar control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
											<div class="col-xs-7">
												<button type="button" id="button-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
												<input type="hidden" name="custom_field[address][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" />
											</div>
										</div>
									<?php } ?>
									<?php if ($custom_field['type'] == 'date') { ?>
										<div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
											<label class="col-xs-5 t-ar control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
											<div class="col-xs-7">
												<input type="date" name="custom_field[address][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
											</div>
										</div>
									<?php } ?>
									<?php if ($custom_field['type'] == 'datetime') { ?>
										<div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
											<label class="col-xs-5 t-ar control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
											<div class="col-xs-7">
												<input type="datetime-local" name="custom_field[address][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
											</div>
										</div>
									<?php } ?>
									<?php if ($custom_field['type'] == 'time') { ?>
										<div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
											<label class="col-xs-5 t-ar control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
											<div class="col-xs-7">
												<input type="time" name="custom_field[address][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
											</div>
										</div>
									<?php } ?>
								<?php } ?>
							<?php } ?>
						</div>
						<div class="col-xs-12 visible-xs visible-sm" style="height:20px"></div>
					</div>
					<script type="text/javascript"><!--
						$(document).ready(function() {
							$('select[name=\'country_id\']').trigger('change');
						});
						$('select[name=\'customer_group_id\']').on('change', function() {
							update_checkout();
						});
						$('select[name=\'country_id\']').on('change', function() {
							var data = $('select[name=\'country_id\']').val();
							$.ajax({
								url: 'index.php?route=revolution/revcheckout/country&country_id='+data,
								dataType: 'json',          
								success: function(json) {
									html = '<option value=""><?php echo $text_select; ?></option>';
									selected = false;
									if (json['zone'] && json['zone'] != '') {
										for (i = 0; i < json['zone'].length; i++) {
											html += '<option value="' + json['zone'][i]['zone_id'] + '"';
											if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
												html += ' selected="selected"';
												selected = true;
											}
											html += '>' + json['zone'][i]['name'] + '</option>';
										}
									}
									$('select[name=\'zone_id\']').html(html);
									if (!selected) {
										$('select[name=\'zone_id\']').val("");
									}
								},
								error: function(xhr, ajaxOptions, thrownError) {
									alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
								}
							});
						});
					--></script>
					</div>
			</div>
		</div>
	</div>
<?php } ?>