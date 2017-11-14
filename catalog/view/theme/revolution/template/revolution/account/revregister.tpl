<?php echo $header; ?>
<div class="container">
<div itemscope itemtype="http://schema.org/BreadcrumbList" style="display:none;">
<?php $position = 1; foreach ($breadcrumbs as $breadcrumb) { ?>
<div itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
<link itemprop="item" href="<?php echo $breadcrumb['href']; ?>">
<meta itemprop="name" content="<?php echo $breadcrumb['text']; ?>" />
<meta itemprop="position" content="<?php echo $position; ?>" />
</div>
<?php $position++; } ?>
</div>
<ul class="breadcrumb"><li class="br_ellipses" style="display: none;">...</li>
<?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
<?php if($i+1<count($breadcrumbs)) { ?><li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li><?php } else { ?><?php } ?>
<?php } ?>
<li><h1 class="inbreadcrumb"><?php echo $heading_title; ?></h1></li>
</ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
	  <!--<p><?php echo $text_account_already; ?></p>-->
	  <div class="col-xs-12">
	    <?php if (strlen($descript) > 30) { ?>
			<?php echo html_entity_decode($descript, ENT_QUOTES, 'UTF-8'); ?><br/>
		<?php } ?>
	  </div>
	  <div class="row">
	  <div class="col-xs-12">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset id="account">
			<input type="hidden" name="address_2" value="" />
			<input type="hidden" name="fax" value="" />
			<input type="hidden" name="company" value="" />
			<?php if ($settings['revregister_legends']) { ?>
				<legend><?php echo $text_your_details; ?></legend>
			<?php } ?>
			<?php if ($settings['revregister_customer_group']) { ?>
				<div class="form-group required" style="display: <?php echo (count($customer_groups) > 1 ? 'block' : 'none'); ?>;">
					<label class="col-xs-3 control-label"><?php echo $entry_customer_group; ?>:</label>
					<div class="col-xs-9">
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
			<?php } else { ?>
				<select name="customer_group_id" class="form-control hidden">
					<?php foreach ($customer_groups as $customer_group) { ?>
						<?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
							<option value="<?php echo $customer_group['customer_group_id']; ?>" selected="selected"><?php echo $customer_group['name']; ?></option>
						<?php } else { ?>
							<option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>
						<?php } ?>
					<?php } ?>
				</select>
			<?php } ?>
			<?php if ($settings['revregister_name']) { ?>
				<div class="form-group <?php if ($settings['revregister_name'] == '2') { ?>required<?php } ?>">
					<label class="col-xs-3 control-label" for="input-firstname"><?php echo $entry_firstname; ?>:</label>
					<div class="col-xs-9">
						<input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname" class="form-control" />
						<?php if ($error_firstname) { ?>
							<div class="text-danger"><?php echo $error_firstname; ?></div>
						<?php } ?>
					</div>
				</div>
		    <?php } else { ?>
				<input type="hidden" name="firstname" value="" />
			<?php } ?>
			<?php if ($settings['revregister_family']) { ?>
				<div class="form-group <?php if ($settings['revregister_family'] == '2') { ?>required<?php } ?>">
					<label class="col-xs-3 control-label" for="input-lastname"><?php echo $entry_lastname; ?>:</label>
					<div class="col-xs-9">
						<input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-lastname" class="form-control" />
						<?php if ($error_lastname) { ?>
							<div class="text-danger"><?php echo $error_lastname; ?></div>
						<?php } ?>
					</div>
				</div>
		    <?php } else { ?>
				<input type="hidden" name="lastname" value="" />
			<?php } ?>
			<?php if ($settings['revregister_mail']) { ?>
				<div class="form-group <?php if ($settings['revregister_mail'] == '2') { ?>required<?php } ?>">
					<label class="col-xs-3 control-label" for="input-email"><?php echo $entry_email; ?>:</label>
					<div class="col-xs-9">
						<input type="email" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
						<?php if ($error_email) { ?>
							<div class="text-danger"><?php echo $error_email; ?></div>
						<?php } ?>
					</div>
				</div>
				<div class="form-group required">
					<label class="col-xs-3 control-label" for="input-password"><?php echo $entry_password; ?>:</label>
					<div class="col-xs-9">
						<input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
						<?php if ($error_password) { ?>
							<div class="text-danger"><?php echo $error_password; ?></div>
						<?php } ?>
					</div>
				</div>
			<?php } else { ?>
				<input type="hidden" name="email" value="empty@email" />
			<?php } ?>
			<?php if ($settings['revregister_telephone']) { ?>
				<div class="form-group <?php if ($settings['revregister_telephone'] == '2') { ?>required<?php } ?>">
					<label class="col-xs-3 control-label" for="input-telephone"><?php echo $entry_telephone; ?>:</label>
					<div class="col-xs-9">
						<input type="tel" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" class="form-control" <?php if ($settings['revregister_telephone_mask']) { ?> data-mask="<?php echo $settings['revcheckout_telephone_mask']; ?>" <?php } ?> />
						<?php if ($error_telephone) { ?>
							<div class="text-danger"><?php echo $error_telephone; ?></div>
						<?php } ?>
					</div>
				</div>
		    <?php } else { ?>
				<input type="hidden" name="telephone" value="" />
			<?php } ?>
			<?php if ($settings['revregister_custom_fields']) { ?>
				<?php foreach ($custom_fields as $custom_field) { ?>
					<?php if ($custom_field['location'] == 'account') { ?>
					<?php if ($custom_field['type'] == 'select') { ?>
					<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
					<label class="col-xs-3 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
					<div class="col-xs-9">
					  <select name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control">
						<option value=""><?php echo $text_select; ?></option>
						<?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
						<?php if (isset($register_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $register_custom_field[$custom_field['custom_field_id']]) { ?>
						<option value="<?php echo $custom_field_value['custom_field_value_id']; ?>" selected="selected"><?php echo $custom_field_value['name']; ?></option>
						<?php } else { ?>
						<option value="<?php echo $custom_field_value['custom_field_value_id']; ?>"><?php echo $custom_field_value['name']; ?></option>
						<?php } ?>
						<?php } ?>
					  </select>
					  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
					  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
					  <?php } ?>
					</div>
					</div>
					<?php } ?>
					<?php if ($custom_field['type'] == 'radio') { ?>
					<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
					<label class="col-xs-3 control-label"><?php echo $custom_field['name']; ?>:</label>
					<div class="col-xs-9">
					  <div>
						<?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
						<div class="radio">
						  <?php if (isset($register_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $register_custom_field[$custom_field['custom_field_id']]) { ?>
						  <label>
							<input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
							<?php echo $custom_field_value['name']; ?></label>
						  <?php } else { ?>
						  <label>
							<input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
							<?php echo $custom_field_value['name']; ?></label>
						  <?php } ?>
						</div>
						<?php } ?>
					  </div>
					  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
					  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
					  <?php } ?>
					</div>
					</div>
					<?php } ?>
					<?php if ($custom_field['type'] == 'checkbox') { ?>
					<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
					<label class="col-xs-3 control-label"><?php echo $custom_field['name']; ?>:</label>
					<div class="col-xs-9">
					  <div>
						<?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
						<div class="checkbox">
						  <?php if (isset($register_custom_field[$custom_field['custom_field_id']]) && in_array($custom_field_value['custom_field_value_id'], $register_custom_field[$custom_field['custom_field_id']])) { ?>
						  <label>
							<input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
							<?php echo $custom_field_value['name']; ?></label>
						  <?php } else { ?>
						  <label>
							<input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
							<?php echo $custom_field_value['name']; ?></label>
						  <?php } ?>
						</div>
						<?php } ?>
					  </div>
					  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
					  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
					  <?php } ?>
					</div>
					</div>
					<?php } ?>
					<?php if ($custom_field['type'] == 'text') { ?>
					<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
					<label class="col-xs-3 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
					<div class="col-xs-9">
					  <input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
					  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
					  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
					  <?php } ?>
					</div>
					</div>
					<?php } ?>
					<?php if ($custom_field['type'] == 'textarea') { ?>
					<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
					<label class="col-xs-3 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
					<div class="col-xs-9">
					  <textarea name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" rows="5" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control"><?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?></textarea>
					  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
					  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
					  <?php } ?>
					</div>
					</div>
					<?php } ?>
					<?php if ($custom_field['type'] == 'file') { ?>
					<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
					<label class="col-xs-3 control-label"><?php echo $custom_field['name']; ?>:</label>
					<div class="col-xs-9">
					  <button type="button" id="button-custom-field<?php echo $custom_field['custom_field_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
					  <input type="hidden" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : ''); ?>" />
					  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
					  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
					  <?php } ?>
					</div>
					</div>
					<?php } ?>
					<?php if ($custom_field['type'] == 'date') { ?>
					<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
					<label class="col-xs-3 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
					<div class="col-xs-9">
					  <div class="input-group date">
						<input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
						<span class="input-group-btn">
						<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
						</span></div>
					  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
					  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
					  <?php } ?>
					</div>
					</div>
					<?php } ?>
					<?php if ($custom_field['type'] == 'time') { ?>
					<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
					<label class="col-xs-3 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
					<div class="col-xs-9">
					  <div class="input-group time">
						<input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
						<span class="input-group-btn">
						<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
						</span></div>
					  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
					  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
					  <?php } ?>
					</div>
					</div>
					<?php } ?>
					<?php if ($custom_field['type'] == 'datetime') { ?>
					<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
					<label class="col-xs-3 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
					<div class="col-xs-9">
					  <div class="input-group datetime">
						<input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
						<span class="input-group-btn">
						<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
						</span></div>
					  <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
					  <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
					  <?php } ?>
					</div>
					</div>
					<?php } ?>
					<?php } ?>
				<?php } ?>
			<?php } ?>
			<?php if (!$settings['revregister_mail']) { ?>
				<div class="form-group required">
					<label class="col-xs-3 control-label" for="input-password"><?php echo $entry_password; ?>:</label>
					<div class="col-xs-9">
						<input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
						<?php if ($error_password) { ?>
							<div class="text-danger"><?php echo $error_password; ?></div>
						<?php } ?>
					</div>
				</div>
			<?php } ?>
        </fieldset>
		<?php if ($settings['revregister_country'] || $settings['revregister_region'] || $settings['revregister_index'] || $settings['revregister_city'] || $settings['revregister_adres'] || $settings['revregister_custom_fields']) { ?>
			<fieldset id="address">
				<?php if ($settings['revregister_legends']) { ?>
					<legend><?php echo $text_your_address; ?></legend>
				<?php } ?>
				<?php if ($settings['revregister_country']) { ?>
					<div class="form-group <?php if ($settings['revregister_country'] == '2') { ?>required<?php } ?>">
						<label class="col-xs-3 control-label" for="input-country"><?php echo $entry_country; ?>:</label>
						<div class="col-xs-9">
							<select name="country_id" id="input-country" class="form-control">
								<option value=""><?php echo $text_select; ?></option>
								<?php foreach ($countries as $country) { ?>
									<?php if ($country['country_id'] == $country_id) { ?>
										<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
									<?php } else { ?>
										<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
									<?php } ?>
								<?php } ?>
							</select>
							<?php if ($error_country) { ?>
								<div class="text-danger"><?php echo $error_country; ?></div>
							<?php } ?>
						</div>
					</div>
				<?php } else { ?>
					<input type="hidden" name="country_id" value="<?php echo $config_country_id; ?>" />
				<?php } ?>
				<?php if ($settings['revregister_region']) { ?>
					<div class="form-group <?php if ($settings['revregister_region'] == '2') { ?>required<?php } ?>">
						<label class="col-xs-3 control-label" for="input-zone"><?php echo $entry_zone; ?>:</label>
						<div class="col-xs-9">
							<select name="zone_id" id="input-zone" class="form-control">
							</select>
							<?php if ($error_zone) { ?>
								<div class="text-danger"><?php echo $error_zone; ?></div>
							<?php } ?>
						</div>
					</div>
				<?php } else { ?>
					<input type="hidden" name="zone_id" value="" />
				<?php } ?>
				<?php if ($settings['revregister_index']) { ?>
					<div class="form-group <?php if ($settings['revregister_index'] == '2') { ?>required<?php } ?>">
						<label class="col-xs-3 control-label" for="input-postcode"><?php echo $entry_postcode; ?>:</label>
						<div class="col-xs-9">
							<input type="text" name="postcode" value="<?php echo $postcode; ?>" placeholder="<?php echo $entry_postcode; ?>" id="input-postcode" class="form-control" />
							<?php if ($error_postcode) { ?>
								<div class="text-danger"><?php echo $error_postcode; ?></div>
							<?php } ?>
						</div>
					</div>
				<?php } else { ?>
					<input type="hidden" name="postcode" value="" />
				<?php } ?>
				<?php if ($settings['revregister_city']) { ?>
					<div class="form-group <?php if ($settings['revregister_city'] == '2') { ?>required<?php } ?>">
					<label class="col-xs-3 control-label" for="input-city"><?php echo $entry_city; ?>:</label>
					<div class="col-xs-9">
					<input type="text" name="city" value="<?php echo $city; ?>" placeholder="<?php echo $entry_city; ?>" id="input-city" class="form-control" />
					<?php if ($error_city) { ?>
					<div class="text-danger"><?php echo $error_city; ?></div>
					<?php } ?>
					</div>
					</div>
				<?php } else { ?>
					<input type="hidden" name="city" value="" />
				<?php } ?>
				<?php if ($settings['revregister_adres']) { ?>
					<div class="form-group <?php if ($settings['revregister_adres'] == '2') { ?>required<?php } ?>">
					<label class="col-xs-3 control-label" for="input-address-1"><?php echo $entry_address_1; ?>:</label>
					<div class="col-xs-9">
					<input type="text" name="address_1" value="<?php echo $address_1; ?>" placeholder="<?php echo $entry_address_1; ?>" id="input-address-1" class="form-control" />
					<?php if ($error_address_1) { ?>
					<div class="text-danger"><?php echo $error_address_1; ?></div>
					<?php } ?>
					</div>
					</div>
				<?php } else { ?>
					<input type="hidden" name="address_1" value="" />
				<?php } ?>
				<?php if ($settings['revregister_custom_fields']) { ?>
					<?php foreach ($custom_fields as $custom_field) { ?>
						<?php if ($custom_field['location'] == 'address') { ?>
						<?php if ($custom_field['type'] == 'select') { ?>
						<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
						<label class="col-xs-3 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
						<div class="col-xs-9">
						<select name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control">
						<option value=""><?php echo $text_select; ?></option>
						<?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
						<?php if (isset($register_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $register_custom_field[$custom_field['custom_field_id']]) { ?>
						<option value="<?php echo $custom_field_value['custom_field_value_id']; ?>" selected="selected"><?php echo $custom_field_value['name']; ?></option>
						<?php } else { ?>
						<option value="<?php echo $custom_field_value['custom_field_value_id']; ?>"><?php echo $custom_field_value['name']; ?></option>
						<?php } ?>
						<?php } ?>
						</select>
						<?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						<div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						<?php } ?>
						</div>
						</div>
						<?php } ?>
						<?php if ($custom_field['type'] == 'radio') { ?>
						<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
						<label class="col-xs-3 control-label"><?php echo $custom_field['name']; ?>:</label>
						<div class="col-xs-9">
						<div>
						<?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
						<div class="radio">
						  <?php if (isset($register_custom_field[$custom_field['custom_field_id']]) && $custom_field_value['custom_field_value_id'] == $register_custom_field[$custom_field['custom_field_id']]) { ?>
						  <label>
							<input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
							<?php echo $custom_field_value['name']; ?></label>
						  <?php } else { ?>
						  <label>
							<input type="radio" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
							<?php echo $custom_field_value['name']; ?></label>
						  <?php } ?>
						</div>
						<?php } ?>
						</div>
						<?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						<div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						<?php } ?>
						</div>
						</div>
						<?php } ?>
						<?php if ($custom_field['type'] == 'checkbox') { ?>
						<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
						<label class="col-xs-3 control-label"><?php echo $custom_field['name']; ?>:</label>
						<div class="col-xs-9">
						<div>
						<?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
						<div class="checkbox">
						  <?php if (isset($register_custom_field[$custom_field['custom_field_id']]) && in_array($custom_field_value['custom_field_value_id'], $register_custom_field[$custom_field['custom_field_id']])) { ?>
						  <label>
							<input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
							<?php echo $custom_field_value['name']; ?></label>
						  <?php } else { ?>
						  <label>
							<input type="checkbox" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
							<?php echo $custom_field_value['name']; ?></label>
						  <?php } ?>
						</div>
						<?php } ?>
						</div>
						<?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						<div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						<?php } ?>
						</div>
						</div>
						<?php } ?>
						<?php if ($custom_field['type'] == 'text') { ?>
						<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
						<label class="col-xs-3 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
						<div class="col-xs-9">
						<input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
						<?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						<div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						<?php } ?>
						</div>
						</div>
						<?php } ?>
						<?php if ($custom_field['type'] == 'textarea') { ?>
						<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
						<label class="col-xs-3 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
						<div class="col-xs-9">
						<textarea name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" rows="5" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control"><?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?></textarea>
						<?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						<div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						<?php } ?>
						</div>
						</div>
						<?php } ?>
						<?php if ($custom_field['type'] == 'file') { ?>
						<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
						<label class="col-xs-3 control-label"><?php echo $custom_field['name']; ?>:</label>
						<div class="col-xs-9">
						<button type="button" id="button-custom-field<?php echo $custom_field['custom_field_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
						<input type="hidden" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : ''); ?>" />
						<?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						<div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						<?php } ?>
						</div>
						</div>
						<?php } ?>
						<?php if ($custom_field['type'] == 'date') { ?>
						<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
						<label class="col-xs-3 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
						<div class="col-xs-9">
						<div class="input-group date">
						<input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
						<span class="input-group-btn">
						<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
						</span></div>
						<?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						<div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						<?php } ?>
						</div>
						</div>
						<?php } ?>
						<?php if ($custom_field['type'] == 'time') { ?>
						<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
						<label class="col-xs-3 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
						<div class="col-xs-9">
						<div class="input-group time">
						<input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
						<span class="input-group-btn">
						<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
						</span></div>
						<?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						<div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						<?php } ?>
						</div>
						</div>
						<?php } ?>
						<?php if ($custom_field['type'] == 'datetime') { ?>
						<div id="custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-group custom-field <?php if ($custom_field['required']) { ?>required<?php } ?>" data-sort="<?php echo $custom_field['sort_order']; ?>">
						<label class="col-xs-3 control-label" for="input-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?>:</label>
						<div class="col-xs-9">
						<div class="input-group datetime">
						<input type="text" name="custom_field[<?php echo $custom_field['location']; ?>][<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($register_custom_field[$custom_field['custom_field_id']]) ? $register_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
						<span class="input-group-btn">
						<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
						</span></div>
						<?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
						<div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
						<?php } ?>
						</div>
						</div>
						<?php } ?>
						<?php } ?>
					<?php } ?>
				<?php } ?>
			</fieldset>
		<?php } else { ?>
			<input type="hidden" name="country_id" value="<?php echo $config_country_id; ?>" />
			<input type="hidden" name="zone_id" value="" />
			<input type="hidden" name="postcode" value="" />
			<input type="hidden" name="city" value="" />
			<input type="hidden" name="address_1" value="" />
		<?php } ?>
		<?php if ($settings['revregister_newsletter']) { ?>
			<fieldset>
				<?php if ($settings['revregister_legends']) { ?>
					<legend><?php echo $text_newsletter; ?></legend>
				<?php } ?>
				<div class="form-group">
					<label class="col-xs-3 control-label"><?php echo $entry_newsletter; ?>:</label>
					<div class="col-xs-9">
						<?php if ($newsletter) { ?>
							<label class="radio-inline">
							<input type="radio" name="newsletter" value="1" checked="checked" />
							<?php echo $text_yes; ?></label>
							<label class="radio-inline">
							<input type="radio" name="newsletter" value="0" />
							<?php echo $text_no; ?></label>
						<?php } else { ?>
							<label class="radio-inline">
							<input type="radio" name="newsletter" value="1" />
							<?php echo $text_yes; ?></label>
							<label class="radio-inline">
							<input type="radio" name="newsletter" value="0" checked="checked" />
							<?php echo $text_no; ?></label>
						<?php } ?>
					</div>
				</div>
			</fieldset>
		<?php } else { ?>
			<input type="hidden" name="newsletter" value="0" />
		<?php } ?>
        <?php echo $captcha; ?>
        <?php if ($text_agree) { ?>
        <div class="buttons">
          <div class="pull-right">
            <span><?php echo $text_agree; ?></span>
			<input type="checkbox" name="agree" checked="checked" style="margin-top:3px;vertical-align:top;margin-left:3px;" />
			<br><br>
			<div class="pull-right">
				<input type="submit" value="<?php echo $button_continue_reg_ok; ?>" class="btn btn-primary" />
			</div>
          </div>
        </div>
        <?php } else { ?>
        <div class="buttons">
          <div class="pull-right">
            <input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
          </div>
        </div>
        <?php } ?>
      </form>
	  </div>
	  </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
// Sort the custom fields
$('#account .form-group[data-sort]').detach().each(function() {
	if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#account .form-group').length) {
		$('#account .form-group').eq($(this).attr('data-sort')).before(this);
	}

	if ($(this).attr('data-sort') > $('#account .form-group').length) {
		$('#account .form-group:last').after(this);
	}

	if ($(this).attr('data-sort') < -$('#account .form-group').length) {
		$('#account .form-group:first').before(this);
	}
});

$('#address .form-group[data-sort]').detach().each(function() {
	if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#address .form-group').length) {
		$('#address .form-group').eq($(this).attr('data-sort')).before(this);
	}

	if ($(this).attr('data-sort') > $('#address .form-group').length) {
		$('#address .form-group:last').after(this);
	}

	if ($(this).attr('data-sort') < -$('#address .form-group').length) {
		$('#address .form-group:first').before(this);
	}
});

$('select[name=\'customer_group_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=account/register/customfield&customer_group_id=' + this.value,
		dataType: 'json',
		success: function(json) {
			$('.custom-field').hide();
			$('.custom-field').removeClass('required');

			for (i = 0; i < json.length; i++) {
				custom_field = json[i];

				$('#custom-field' + custom_field['custom_field_id']).show();

				if (custom_field['required']) {
					$('#custom-field' + custom_field['custom_field_id']).addClass('required');
				}
			}


		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'customer_group_id\'] option:selected').trigger('change');
//--></script>
<script type="text/javascript"><!--
$('button[id^=\'button-custom-field\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$(node).parent().find('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.time').datetimepicker({
	pickDate: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});
//--></script>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=account/account/country&country_id=' + this.value,
		dataType: 'json',
		complete: function() {
			$('.fa-spin').remove();
		},
		success: function(json) {
			html = '<option value=""><?php echo $text_select; ?></option>';
			if (json['zone'] && json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
					html += '<option value="' + json['zone'][i]['zone_id'] + '"';

					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
						html += ' selected="selected"';
					}

					html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}

			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});
$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php echo $footer; ?>