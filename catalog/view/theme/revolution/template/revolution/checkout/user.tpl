<div class="row">
	<input type="hidden" name="fax" value="" />
	<input type="hidden" name="company" value="" />
	<input type="hidden" name="address_2" value="" />
	<?php if ($settings['revcheckout_register'] == '1' && !$logged) { ?>
		<div class="form-group">
			<label class="col-xs-5 t-ar control-label"><?php echo $text_register; ?>:</label>
			<div class="col-xs-7">
				<input type="checkbox" name="register" onclick="jQuery('.register-form').toggle(); <?php if (($settings['revcheckout_mail'] && $settings['revcheckout_mail'] == '1')) { ?>jQuery('.revcheckout_mail_reg_on').toggle()<?php } ?>" value="1" <?php if ($register) { ?> checked <?php } ?>>
			</div>
		</div>    
		<div class="register-form" style="<?php if (!$register) { ?>display: none;<?php } ?>clear: both;">
			<?php if ($settings['revcheckout_customer_group']) { ?>
				<div class="form-group">
					<label class="col-xs-5 t-ar control-label"><?php echo $entry_customer_group; ?>:</label>
					<div class="col-xs-7">
						<select name="customer_group_id" class="form-control">
							<?php foreach ($customer_groups as $customer_group) { ?>
								<?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
									<option value="<?php echo $customer_group['customer_group_id']; ?>" selected="selected"><?php echo $customer_group['name']; ?></option>
								<?php } else { ?>
									<option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>
								<?php } ?>
							<?php } ?>
						</select>
					</div>
				</div>
			<?php } ?>
			<?php if (!$settings['revcheckout_mail'] || ($settings['revcheckout_mail'] && $settings['revcheckout_mail'] == '1')) { ?>
				<div class="form-group required">
					<label class="col-xs-5 t-ar control-label"><?php echo $entry_email; ?>:</label>
					<div class="col-xs-7">
						<input type="text" name="email" value="<?php echo isset($email) ? $email : ''; ?>" class="form-control" />
					</div>
				</div>
			<?php } ?>
			<div class="form-group required">
				<label class="col-xs-5 t-ar control-label"><?php echo $entry_password; ?>:</label>
				<div class="col-xs-7">
					<input type="password" name="password" value="" class="form-control" />
				</div>
			</div>
		</div>
	<div class="clearfix"></div>
	<?php } else if ($settings['revcheckout_register'] == '2' && !$logged) { ?>
		<?php if (!$settings['revcheckout_mail'] || ($settings['revcheckout_mail'] && $settings['revcheckout_mail'] == '1')) { ?>
			<div class="form-group required">
				<label class="col-xs-5 t-ar control-label"><?php echo $entry_email; ?>:</label>
				<div class="col-xs-7">
					<input type="text" name="email" value="<?php echo isset($email) ? $email : ''; ?>" class="form-control" />
				</div>
			</div>
		<?php } ?>
		<div class="form-group required">
			<label class="col-xs-5 t-ar control-label"><?php echo $entry_password; ?>:</label>
			<div class="col-xs-7">
				<input type="password" name="password" value="" class="form-control" />
			</div>
		</div>
		<div class="clearfix"></div>
	<?php } ?>
	<?php if ($settings['revcheckout_family']) { ?>
		<div class="form-group <?php if ($settings['revcheckout_family'] == '2') { ?>required<?php } ?>">
			<label class="col-xs-5 t-ar control-label"><?php echo $entry_lastname; ?>:</label>
			<div class="col-xs-7">
				<input type="text" name="lastname" value="<?php echo isset($lastname) ? $lastname : ''; ?>" class="form-control" />
			</div>
		</div>
	<?php } else { ?>
		<input type="hidden" name="lastname" value="" />
	<?php } ?>
	<?php if ($settings['revcheckout_name']) { ?>
		<div class="form-group <?php if ($settings['revcheckout_name'] == '2') { ?>required<?php } ?>">
			<label class="col-xs-5 t-ar control-label"><?php echo $entry_firstname; ?>:</label>
			<div class="col-xs-7">
				<input type="text" name="firstname" value="<?php echo isset($firstname) ? $firstname : ''; ?>" class="form-control" />
			</div>
		</div>
	<?php } else { ?>
		<input type="hidden" name="firstname" value="" />
	<?php } ?>
	<?php if ($settings['revcheckout_telephone']) { ?>
		<div class="form-group <?php if ($settings['revcheckout_telephone'] == '2') { ?>required<?php } ?>">
			<label class="col-xs-5 t-ar control-label"><?php echo $entry_telephone; ?>:</label>
			<div class="col-xs-7">
				<input type="text" name="telephone" value="<?php echo isset($telephone) ? $telephone : ''; ?>" class="form-control" <?php if ($settings['revcheckout_telephone_mask']) { ?> data-mask="<?php echo $settings['revcheckout_telephone_mask']; ?>" <?php } ?> />
			</div>
		</div>
	<?php } else { ?>
		<input type="hidden" name="telephone" value="" />
	<?php } ?>
	<?php if ($settings['revcheckout_mail'] && !$register) { ?>
		<div class="form-group <?php if ($settings['revcheckout_mail'] == '2') { ?>required<?php } ?>">
			<label class="col-xs-5 t-ar control-label"><?php echo $entry_email; ?>:</label>
			<div class="col-xs-7">
				<input type="text" name="email" value="<?php echo isset($email) ? $email : ''; ?>" class="form-control" />
			</div>
		</div>
	<?php } ?>
	<?php if (isset($custom_fields)) foreach ($custom_fields as $custom_field) { ?>
		<?php if ($custom_field['location'] == 'account') { ?>
			<?php if ($custom_field['type'] == 'select') { ?>
				<div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
					<label class="col-xs-5 t-ar control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
					<div class="col-xs-7">
						<select name="custom_field[account][<?php echo $custom_field['custom_field_id']; ?>]" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control">
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
									<label class="input"><input type="radio" name="custom_field[account][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" /><span></span><span><?php echo $custom_field_value['name']; ?></span></label>
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
									<label class="input"><input type="checkbox" name="custom_field[account][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field['name'].': '.$custom_field_value['name']; ?>" /><span><?php echo $custom_field_value['name']; ?></span></label>
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
						<input type="text" name="custom_field[account][<?php echo $custom_field['custom_field_id']; ?>]" value="" placeholder="<?php echo $custom_field['value']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" <?php if ($custom_field['mask']) { ?> data-mask="<?php echo $custom_field['mask']; ?>" <?php } ?> />
					</div>
				</div>
			<?php } ?>
			<?php if ($custom_field['type'] == 'textarea') { ?>
				<div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
					<label class="col-xs-5 t-ar control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
					<div class="col-xs-7">
						<textarea name="custom_field[account][<?php echo $custom_field['custom_field_id']; ?>]" rows="3" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" placeholder="<?php echo $custom_field['value']; ?>" <?php if ($custom_field['mask']) { ?> data-mask="<?php echo $custom_field['mask']; ?>" <?php } ?>></textarea>
					</div>
				</div>
			<?php } ?>
			<?php if ($custom_field['type'] == 'file') { ?>
				<div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
					<label class="col-xs-5 t-ar control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
					<div class="col-xs-7">
						<button type="button" id="button-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
						<input type="hidden" name="custom_field[account][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" />
					</div>
				</div>
			<?php } ?>
			<?php if ($custom_field['type'] == 'date') { ?>
				<div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
					<label class="col-xs-5 t-ar control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
					<div class="col-xs-7">
						<input type="date" name="custom_field[account][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
					</div>
				</div>
			<?php } ?>
			<?php if ($custom_field['type'] == 'datetime') { ?>
				<div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
					<label class="col-xs-5 t-ar control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
					<div class="col-xs-7">
						<input type="datetime-local" name="custom_field[account][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
					</div>
				</div>
			<?php } ?>
			<?php if ($custom_field['type'] == 'time') { ?>
				<div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
					<label class="col-xs-5 t-ar control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
					<div class="col-xs-7">
						<input type="time" name="custom_field[account][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
					</div>
				</div>
			<?php } ?>
		<?php } ?>
	<?php } ?>
	<?php if ($settings['revcheckout_comment']) { ?>
		<div class="form-group <?php if ($settings['revcheckout_comment'] == '2') { ?>required<?php } ?>">
			<label class="col-xs-5 t-ar control-label"><?php echo $text_revcheckout_comment; ?>:</label>
			<div class="col-xs-7">
				<textarea name="comment" rows="3" class="form-control"><?php echo $comment; ?></textarea>
			</div>
		</div>
	<?php } ?>
	<script>
	$('select[name=\'customer_group_id\']').on('change', function() {
		update_user();
	});
	$('[name=\'register\']').on('change', function() {
		update_user();
	});
	</script>
</div>