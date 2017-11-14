<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-blog" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
	<?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default alert-helper">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $heading_text; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-revolution" class="form-horizontal">
			<div class="form-group">
				<div class="col-sm-2">
					<nav class="nav-sidebar">
						<ul class="nav tabs">
							<li class="active"><a href="#tab_1" data-toggle="tab">Основные настройки</a></li>
							<li><a href="#tab_2" data-toggle="tab">Опции</a></li>
							<li><a href="#tab_3" data-toggle="tab">Атрибуты</a></li>
							<li><a href="#tab_4" data-toggle="tab">Группировка товаров</a></li>
						</ul>
					</nav>
				</div>	
				<div class="tab-content col-sm-10">
					<div class="tab-pane active text-style" id="tab_1">
						<div class="form-group">
							<label class="col-sm-2 control-label">Статус:</label>
							<div class="col-sm-3">
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[status]" value="1" <?php echo(isset($revtheme_filter['status']) && $revtheme_filter['status'] ? 'checked' : '') ?> /><span>Вкл.</span>
								</label>
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[status]" value="0" <?php echo(!isset($revtheme_filter['status']) || !$revtheme_filter['status'] ? 'checked' : '') ?> /><span>Выкл.</span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-width">Заголовок:</label>
							<div class="col-sm-3">
							<?php foreach ($languages as $language) { ?>
								<div class="input-group">
									<span class="input-group-addon"><img src="<?php echo (VERSION >= 2.2) ? 'language/'.$language['code'].'/'.$language['code'].'.png' : 'view/image/flags/'.$language['image']; ?>" title="<?php echo $language['name']; ?>" /></span>
									<input type="text" name="revtheme_filter[<?php echo $language['language_id']; ?>][title]" value="<?php echo(isset($revtheme_filter[$language['language_id']]['title']) ? $revtheme_filter[$language['language_id']]['title'] : '') ?>" id="input-width" class="form-control" />
								</div>
							<?php } ?>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-razdelitel">Разделитель в атрибутах:</label>
							<div class="col-sm-1">
								<div class="input-group">
									<input type="text" name="revtheme_filter[razdelitel]" value="<?php echo(isset($revtheme_filter['razdelitel']) ? $revtheme_filter['razdelitel'] : ';') ?>" id="input-razdelitel" class="form-control" />
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Фильтр по цене:</label>
							<div class="col-sm-3">
								<label class="radio-inline">
									<input type="radio" onchange="$(this).parent().parent().next().show().next().show().next().show();" name="revtheme_filter[filter_price]" value="1" <?php echo(isset($revtheme_filter['filter_price']) && $revtheme_filter['filter_price'] ? 'checked' : '') ?> /><span>Вкл.</span>
								</label>
								<label class="radio-inline">
									<input type="radio" onchange="$(this).parent().parent().next().hide().next().hide().next().hide();" name="revtheme_filter[filter_price]" value="0" <?php echo(!isset($revtheme_filter['filter_price']) || !$revtheme_filter['filter_price'] ? 'checked' : '') ?> /><span>Выкл.</span>
								</label>
							</div>
							<div class="clearfix" style="margin: 10px 0; <?php if (!isset($revtheme_filter['filter_price']) || !$revtheme_filter['filter_price']) { echo 'display: none'; } ?>"></div>
							<label class="col-sm-2 control-label" style="font-weight: normal; <?php if (!isset($revtheme_filter['filter_price']) || !$revtheme_filter['filter_price']) { echo 'display: none'; } ?>">Сетка под слайдером цены:</label>
							<div class="col-sm-3" <?php if (!isset($revtheme_filter['filter_price']) || !$revtheme_filter['filter_price']) { echo 'style="display: none"'; } ?>>
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[filter_price_setka]" value="1" <?php echo(isset($revtheme_filter['filter_price_setka']) && $revtheme_filter['filter_price_setka'] ? 'checked' : '') ?> /><span>Вкл.</span>
								</label>
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[filter_price_setka]" value="0" <?php echo(!isset($revtheme_filter['filter_price_setka']) || !$revtheme_filter['filter_price_setka'] ? 'checked' : '') ?> /><span>Выкл.</span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Фильтр по наличию:</label>
							<div class="col-sm-10">
								<label class="radio-inline">
									<input type="radio" onchange="$(this).parent().parent().next().show().next().show().next().show();" name="revtheme_filter[filter_instock]" value="1" <?php if (isset($revtheme_filter['filter_instock']) &&  $revtheme_filter['filter_instock']) { echo 'checked';} ?> /><span>Вкл.</span>
								</label>
								<label class="radio-inline">
									<input type="radio" onchange="$(this).parent().parent().next().hide().next().hide().next().hide().next().hide();" name="revtheme_filter[filter_instock]" value="0" <?php if ((isset($revtheme_filter['filter_instock']) &&  !$revtheme_filter['filter_instock']) || !isset($revtheme_filter['filter_instock'])) { echo 'checked'; } ?> /><span>Выкл.</span>
								</label>
							</div>
							<div class="clearfix" style="margin: 10px 0; <?php if (!isset($revtheme_filter['filter_instock']) || !$revtheme_filter['filter_instock']) { echo 'display: none'; } ?>"></div>
							<label class="col-sm-2 control-label" style="font-weight: normal; <?php if (!isset($revtheme_filter['filter_instock']) || !$revtheme_filter['filter_instock']) { echo 'display: none'; } ?>">По умолчанию:</label>
							<div class="col-sm-10" <?php if (!isset($revtheme_filter['filter_instock']) || !$revtheme_filter['filter_instock']) { echo 'style="display: none"'; } ?>>
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[filter_instock_vid]" value="1" <?php echo(isset($revtheme_filter['filter_instock_vid']) && $revtheme_filter['filter_instock_vid'] ? 'checked' : '') ?> /><span>Скрыт</span>
								</label>
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[filter_instock_vid]" value="0" <?php echo(!isset($revtheme_filter['filter_instock_vid']) || !$revtheme_filter['filter_instock_vid'] ? 'checked' : '') ?> /><span>Открыт</span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Группировка товаров:</label>
							<div class="col-sm-10">
								<label class="radio-inline">
									<input type="radio" onchange="$(this).parent().parent().next().show().next().show().next().show();" name="revtheme_filter[filter_gr]" value="radio" <?php if (isset($revtheme_filter['filter_gr']) &&  $revtheme_filter['filter_gr'] == 'radio') { echo 'checked';} ?> /><span>Переключатель</span>
								</label>
								<label class="radio-inline">
									<input type="radio" onchange="$(this).parent().parent().next().show().next().show().next().show();" name="revtheme_filter[filter_gr]" value="select" <?php if (isset($revtheme_filter['filter_gr']) &&  $revtheme_filter['filter_gr'] == 'select') { echo 'checked';} ?> /><span>Список</span>
								</label>
								<label class="radio-inline">
									<input type="radio" onchange="$(this).parent().parent().next().hide().next().hide().next().hide();" name="revtheme_filter[filter_gr]" value="false" <?php if (!isset($revtheme_filter['filter_gr']) || (isset($revtheme_filter['filter_gr']) &&  $revtheme_filter['filter_gr'] == 'false')) { echo 'checked'; } ?> /><span>Выкл.</span>
								</label>
							</div>
							<div class="clearfix" style="margin: 10px 0; <?php if (!isset($revtheme_filter['filter_gr']) || $revtheme_filter['filter_gr'] == 'false') { echo 'display: none'; } ?>"></div>
							<label class="col-sm-2 control-label" style="font-weight: normal; <?php if (!isset($revtheme_filter['filter_gr']) || $revtheme_filter['filter_gr'] == 'false') { echo 'display: none'; } ?>">По умолчанию:</label>
							<div class="col-sm-10" <?php if (!isset($revtheme_filter['filter_gr']) || $revtheme_filter['filter_gr'] == 'false') { echo 'style="display: none"'; } ?>>
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[filter_gr_vid]" value="1" <?php echo(isset($revtheme_filter['filter_gr_vid']) && $revtheme_filter['filter_gr_vid'] ? 'checked' : '') ?> /><span>Скрыт</span>
								</label>
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[filter_gr_vid]" value="0" <?php echo(!isset($revtheme_filter['filter_gr_vid']) || !$revtheme_filter['filter_gr_vid'] ? 'checked' : '') ?> /><span>Открыт</span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Фильтр по подкатегориям:</label>
							<div class="col-sm-10">
								<label class="radio-inline">
									<input type="radio" onchange="$(this).parent().parent().next().show().next().show().next().show();" name="revtheme_filter[filter_subcategories]" value="radio" <?php if (isset($revtheme_filter['filter_subcategories']) &&  $revtheme_filter['filter_subcategories'] == 'radio') { echo 'checked';} ?> /><span>Переключатель</span>
								</label>
								<label class="radio-inline">
									<input type="radio" onchange="$(this).parent().parent().next().show().next().show().next().show();" name="revtheme_filter[filter_subcategories]" value="checkbox" <?php if (isset($revtheme_filter['filter_subcategories']) &&  $revtheme_filter['filter_subcategories'] == 'checkbox') { echo 'checked';} ?> /><span>Флажок</span>
								</label>
								<label class="radio-inline">
									<input type="radio" onchange="$(this).parent().parent().next().show().next().show().next().show();" name="revtheme_filter[filter_subcategories]" value="select" <?php if (isset($revtheme_filter['filter_subcategories']) &&  $revtheme_filter['filter_subcategories'] == 'select') { echo 'checked';} ?> /><span>Список</span>
								</label>
								<label class="radio-inline">
									<input type="radio" onchange="$(this).parent().parent().next().hide().next().hide().next().hide();" name="revtheme_filter[filter_subcategories]" value="false" <?php if (!isset($revtheme_filter['filter_subcategories']) || (isset($revtheme_filter['filter_subcategories']) &&  $revtheme_filter['filter_subcategories'] == 'false')) { echo 'checked'; } ?> /><span>Выкл.</span>
								</label>
							</div>
							<div class="clearfix" style="margin: 10px 0; <?php if (!isset($revtheme_filter['filter_subcategories']) || $revtheme_filter['filter_subcategories'] == 'false') { echo 'display: none'; } ?>"></div>
							<label class="col-sm-2 control-label" style="font-weight: normal; <?php if (!isset($revtheme_filter['filter_subcategories']) || $revtheme_filter['filter_subcategories'] == 'false') { echo 'display: none'; } ?>">По умолчанию:</label>
							<div class="col-sm-10" <?php if (!isset($revtheme_filter['filter_subcategories']) || $revtheme_filter['filter_subcategories'] == 'false') { echo 'style="display: none"'; } ?>>
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[filter_subcategories_vid]" value="1" <?php echo(isset($revtheme_filter['filter_subcategories_vid']) && $revtheme_filter['filter_subcategories_vid'] ? 'checked' : '') ?> /><span>Скрыт</span>
								</label>
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[filter_subcategories_vid]" value="0" <?php echo(!isset($revtheme_filter['filter_subcategories_vid']) || !$revtheme_filter['filter_subcategories_vid'] ? 'checked' : '') ?> /><span>Открыт</span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Фильтр по производителям:</label>
							<div class="col-sm-10">
								<label class="radio-inline">
									<input type="radio" onchange="$(this).parent().parent().next().show().next().show().next().show();" name="revtheme_filter[filter_manufacturer]" value="radio" <?php if (isset($revtheme_filter['filter_manufacturer']) &&  $revtheme_filter['filter_manufacturer'] == 'radio') { echo 'checked';} ?> /><span>Переключатель</span>
								</label>
								<label class="radio-inline">
									<input type="radio" onchange="$(this).parent().parent().next().show().next().show().next().show();" name="revtheme_filter[filter_manufacturer]" value="checkbox" <?php if (isset($revtheme_filter['filter_manufacturer']) &&  $revtheme_filter['filter_manufacturer'] == 'checkbox') { echo 'checked';} ?> /><span>Флажок</span>
								</label>
								<label class="radio-inline">
									<input type="radio" onchange="$(this).parent().parent().next().show().next().show().next().show();" name="revtheme_filter[filter_manufacturer]" value="select" <?php if (isset($revtheme_filter['filter_manufacturer']) &&  $revtheme_filter['filter_manufacturer'] == 'select') { echo 'checked';} ?> /><span>Список</span>
								</label>
								<label class="radio-inline">
									<input type="radio" onchange="$(this).parent().parent().next().hide().next().hide().next().hide();" name="revtheme_filter[filter_manufacturer]" value="false" <?php if (isset($revtheme_filter['filter_manufacturer']) &&  $revtheme_filter['filter_manufacturer'] == 'false') { echo 'checked'; } ?> /><span>Выкл.</span>
								</label>
							</div>
							<div class="clearfix" style="margin: 10px 0; <?php if (!isset($revtheme_filter['filter_manufacturer']) || $revtheme_filter['filter_manufacturer'] == 'false') { echo 'display: none'; } ?>"></div>
							<label class="col-sm-2 control-label" style="font-weight: normal; <?php if (!isset($revtheme_filter['filter_manufacturer']) || $revtheme_filter['filter_manufacturer'] == 'false') { echo 'display: none'; } ?>">По умолчанию:</label>
							<div class="col-sm-10" <?php if (!isset($revtheme_filter['filter_manufacturer']) || $revtheme_filter['filter_manufacturer'] == 'false') { echo 'style="display: none"'; } ?>>
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[filter_manufacturer_vid]" value="1" <?php echo(isset($revtheme_filter['filter_manufacturer_vid']) && $revtheme_filter['filter_manufacturer_vid'] ? 'checked' : '') ?> /><span>Скрыт</span>
								</label>
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[filter_manufacturer_vid]" value="0" <?php echo(!isset($revtheme_filter['filter_manufacturer_vid']) || !$revtheme_filter['filter_manufacturer_vid'] ? 'checked' : '') ?> /><span>Открыт</span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Способ фильтрации:</label>
							<div class="col-sm-3">
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[filter_sposob]" value="1" <?php echo(isset($revtheme_filter['filter_sposob']) && $revtheme_filter['filter_sposob'] ? 'checked' : '') ?> /><span>Авто</span>
								</label>
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[filter_sposob]" value="0" <?php echo(!isset($revtheme_filter['filter_sposob']) || !$revtheme_filter['filter_sposob'] ? 'checked' : '') ?> /><span>По кнопке</span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Показывать кол-во товаров:</label>
							<div class="col-sm-3">
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[filter_count_products]" value="1" <?php echo(isset($revtheme_filter['filter_count_products']) && $revtheme_filter['filter_count_products'] ? 'checked' : '') ?> /><span>Да</span>
								</label>
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[filter_count_products]" value="0" <?php echo(!isset($revtheme_filter['filter_count_products']) || !$revtheme_filter['filter_count_products'] ? 'checked' : '') ?> /><span>Нет</span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Сетка под слайдерами:</label>
							<div class="col-sm-3">
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[filter_setka]" value="1" <?php echo(isset($revtheme_filter['filter_setka']) && $revtheme_filter['filter_setka'] ? 'checked' : '') ?> /><span>Вкл.</span>
								</label>
								<label class="radio-inline">
									<input type="radio" name="revtheme_filter[filter_setka]" value="0" <?php echo(!isset($revtheme_filter['filter_setka']) || !$revtheme_filter['filter_setka'] ? 'checked' : '') ?> /><span>Выкл.</span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Не показывать фильтр в категориях:</label>
							<div class="col-sm-8">
								<div class="well well-sm" style="min-height: 100px; max-height: 205px; overflow: auto; margin-bottom: 10px;">
									<table class="table table-striped">
										<?php foreach ($categories as $category) { ?>
										<tr>
											<td class="checkbox">
												<label>
													<input type="checkbox" name="revtheme_filter[filter_categories][]" value="<? echo $category['category_id']; ?>" <?= (isset($revtheme_filter['filter_categories']) && is_array($revtheme_filter['filter_categories']) && in_array($category['category_id'], $revtheme_filter['filter_categories'])) ? 'checked' : '' ?>/>
													<? echo $category['name']; ?>
												</label>
											</td>
										</tr>
										<?php } ?>
									</table>
								</div>
								<a onclick="$(this).parent().find(':checkbox').prop('checked', true);">Выделить все</a> / 
								<a onclick="$(this).parent().find(':checkbox').prop('checked', false);">Снять выделения</a>
							</div>
						</div>
					</div>
					<div class="tab-pane text-style" id="tab_2">
						<?php foreach ($options as $option) { ?>
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $option['name']; ?>:</label>
								<div class="col-sm-5">
									<label class="radio-inline">
										<input type="radio" onchange="$(this).parent().parent().next().next().next().show().next().show().next().show().next().show().next().show().next().show();" name="revtheme_filter[filter_option][<? echo $option['option_id']; ?>][option_type]" value="radio" <?php if (isset($revtheme_filter['filter_option'][$option['option_id']]['option_type']) &&  $revtheme_filter['filter_option'][$option['option_id']]['option_type'] == 'radio') { echo 'checked';} ?> /><span>Переключатель</span>
									</label>
									<label class="radio-inline">
										<input type="radio" onchange="$(this).parent().parent().next().next().next().show().next().show().next().show().next().show().next().show().next().show();" name="revtheme_filter[filter_option][<? echo $option['option_id']; ?>][option_type]" value="checkbox" <?php if (isset($revtheme_filter['filter_option'][$option['option_id']]['option_type']) &&  $revtheme_filter['filter_option'][$option['option_id']]['option_type'] == 'checkbox') { echo 'checked';} ?> /><span>Флажок</span>
									</label>
									<label class="radio-inline">
										<input type="radio" onchange="$(this).parent().parent().next().next().next().show().next().show().next().show().next().show().next().show().next().show();" name="revtheme_filter[filter_option][<? echo $option['option_id']; ?>][option_type]" value="select" <?php if (isset($revtheme_filter['filter_option'][$option['option_id']]['option_type']) &&  $revtheme_filter['filter_option'][$option['option_id']]['option_type'] == 'select') { echo 'checked';} ?> /><span>Список</span>
									</label>
									<label class="radio-inline">
										<input type="radio" onchange="$(this).parent().parent().next().next().next().show().next().show().next().show().next().show().next().show().next().show();" name="revtheme_filter[filter_option][<? echo $option['option_id']; ?>][option_type]" value="slider" <?php if (isset($revtheme_filter['filter_option'][$option['option_id']]['option_type']) &&  $revtheme_filter['filter_option'][$option['option_id']]['option_type'] == 'slider') { echo 'checked';} ?> /><span>Слайдер</span>
									</label>
									<label class="radio-inline">
										<input type="radio" onchange="$(this).parent().parent().next().next().next().show().next().show().next().show().next().show().next().show().next().show();" name="revtheme_filter[filter_option][<? echo $option['option_id']; ?>][option_type]" value="image" <?php if (isset($revtheme_filter['filter_option'][$option['option_id']]['option_type']) &&  $revtheme_filter['filter_option'][$option['option_id']]['option_type'] == 'image') { echo 'checked';} ?> /><span>Картинка</span>
									</label>
									<label class="radio-inline">
										<input type="radio" onchange="$(this).parent().parent().next().next().next().hide().next().hide().next().hide().next().hide().next().hide().next().hide();" name="revtheme_filter[filter_option][<? echo $option['option_id']; ?>][option_type]" value="false" <?php if ((isset($revtheme_filter['filter_option'][$option['option_id']]['option_type']) &&  $revtheme_filter['filter_option'][$option['option_id']]['option_type'] == 'false') || !isset($revtheme_filter['filter_option'][$option['option_id']]['option_type'])) { echo 'checked'; } ?> /><span>Выкл.</span>
									</label>
								</div>
								<label class="col-sm-2 control-label" style="font-weight: normal;">Сортировка:</label>
								<div class="col-sm-1">
									<input type="text" name="revtheme_filter[filter_option][<? echo $option['option_id']; ?>][option_sort]" value="<? echo (isset($revtheme_filter['filter_option'][$option['option_id']]['option_sort'])) ? $revtheme_filter['filter_option'][$option['option_id']]['option_sort'] : '0' ?>" class="form-control" />
								</div>
								<div class="clearfix" style="margin: 10px 0; <?php if (!isset($revtheme_filter['filter_option'][$option['option_id']]['option_type']) || $revtheme_filter['filter_option'][$option['option_id']]['option_type'] == 'false') { echo 'display: none'; } ?>"></div>
								<label class="col-sm-2 control-label" style="font-weight: normal; <?php if (!isset($revtheme_filter['filter_option'][$option['option_id']]['option_type']) || $revtheme_filter['filter_option'][$option['option_id']]['option_type'] == 'false') { echo 'display: none'; } ?>">По умолчанию:</label>
								<div class="col-sm-10" <?php if (!isset($revtheme_filter['filter_option'][$option['option_id']]['option_type']) || $revtheme_filter['filter_option'][$option['option_id']]['option_type'] == 'false') { echo 'style="display: none"'; } ?>>
									<label class="radio-inline">
										<input type="radio" name="revtheme_filter[filter_option][<? echo $option['option_id']; ?>][option_vid]" value="1" <?php if ((isset($revtheme_filter['filter_option'][$option['option_id']]['option_vid']) && $revtheme_filter['filter_option'][$option['option_id']]['option_vid'])) { echo 'checked'; } ?> /><span>Скрыт</span>
									</label>
									<label class="radio-inline">
										<input type="radio" name="revtheme_filter[filter_option][<? echo $option['option_id']; ?>][option_vid]" value="0" <?php if ((isset($revtheme_filter['filter_option'][$option['option_id']]['option_vid']) && !$revtheme_filter['filter_option'][$option['option_id']]['option_vid']) || !isset($revtheme_filter['filter_option'][$option['option_id']]['option_vid'])) { echo 'checked'; } ?> /><span>Открыт</span>
									</label>
								</div>
								<div class="clearfix" style="margin: 10px 0; <?php if (!isset($revtheme_filter['filter_option'][$option['option_id']]['option_type']) || $revtheme_filter['filter_option'][$option['option_id']]['option_type'] == 'false') { echo 'display: none'; } ?>"></div>
								<label class="col-sm-2 control-label" style="font-weight: normal; <?php if (!isset($revtheme_filter['filter_option'][$option['option_id']]['option_type']) || $revtheme_filter['filter_option'][$option['option_id']]['option_type'] == 'false') { echo 'display: none'; } ?>">Не показывать в категориях:</label>
								<div class="col-sm-8" <?php if (!isset($revtheme_filter['filter_option'][$option['option_id']]['option_type']) || $revtheme_filter['filter_option'][$option['option_id']]['option_type'] == 'false') { echo 'style="display: none"'; } ?>>
									<div class="well well-sm" style="min-height: 100px; max-height: 205px; overflow: auto; margin-bottom: 10px;">
										<table class="table table-striped">
											<?php foreach ($categories as $category) { ?>
											<tr>
												<td class="checkbox">
													<label>
														<input type="checkbox" name="revtheme_filter[filter_option][<? echo $option['option_id']; ?>][option_categories][]" value="<? echo $category['category_id']; ?>" <?= (isset($revtheme_filter['filter_option'][$option['option_id']]['option_categories']) && is_array($revtheme_filter['filter_option'][$option['option_id']]['option_categories']) && in_array($category['category_id'], $revtheme_filter['filter_option'][$option['option_id']]['option_categories'])) ? 'checked' : '' ?>/>
														<? echo $category['name']; ?>
													</label>
												</td>
											</tr>
											<?php } ?>
										</table>
									</div>
									<a onclick="$(this).parent().find(':checkbox').prop('checked', true);">Выделить все</a> / 
									<a onclick="$(this).parent().find(':checkbox').prop('checked', false);">Снять выделения</a>
								</div>
							</div>
						<?php } ?>
					</div>
					<div class="tab-pane text-style" id="tab_3">
						<?php foreach ($attributes as $attribute) { ?>
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $attribute['name']; ?>:</label>
								<div class="col-sm-5">
									<label class="radio-inline">
										<input type="radio" onchange="$(this).parent().parent().next().next().next().show().next().show().next().show().next().show().next().show().next().show();" name="revtheme_filter[filter_attribute][<? echo $attribute['attribute_id']; ?>][attribute_type]" value="radio" <?php if (isset($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type']) &&  $revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type'] == 'radio') { echo 'checked';} ?> /><span>Переключатель</span>
									</label>
									<label class="radio-inline">
										<input type="radio" onchange="$(this).parent().parent().next().next().next().show().next().show().next().show().next().show().next().show().next().show();" name="revtheme_filter[filter_attribute][<? echo $attribute['attribute_id']; ?>][attribute_type]" value="checkbox" <?php if (isset($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type']) &&  $revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type'] == 'checkbox') { echo 'checked';} ?> /><span>Флажок</span>
									</label>
									<label class="radio-inline">
										<input type="radio" onchange="$(this).parent().parent().next().next().next().show().next().show().next().show().next().show().next().show().next().show();" name="revtheme_filter[filter_attribute][<? echo $attribute['attribute_id']; ?>][attribute_type]" value="select" <?php if (isset($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type']) &&  $revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type'] == 'select') { echo 'checked';} ?> /><span>Список</span>
									</label>
									<label class="radio-inline">
										<input type="radio" onchange="$(this).parent().parent().next().next().next().show().next().show().next().show().next().show().next().show().next().show();" name="revtheme_filter[filter_attribute][<? echo $attribute['attribute_id']; ?>][attribute_type]" value="slider" <?php if (isset($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type']) &&  $revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type'] == 'slider') { echo 'checked';} ?> /><span>Слайдер</span>
									</label>
									<label class="radio-inline">
										<input type="radio" onchange="$(this).parent().parent().next().next().next().hide().next().hide().next().hide().next().hide().next().hide().next().hide();" name="revtheme_filter[filter_attribute][<? echo $attribute['attribute_id']; ?>][attribute_type]" value="false" <?php if ((isset($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type']) &&  $revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type'] == 'false') || !isset($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type'])) { echo 'checked'; } ?> /><span>Выкл.</span>
									</label>
								</div>
								<label class="col-sm-2 control-label" style="font-weight: normal;">Сортировка:</label>
								<div class="col-sm-1">
									<input type="text" name="revtheme_filter[filter_attribute][<? echo $attribute['attribute_id']; ?>][attribute_sort]" value="<? echo (isset($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_sort'])) ? $revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_sort'] : '0' ?>" class="form-control" />
								</div>
								<div class="clearfix" style="margin: 10px 0; <?php if (!isset($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type']) || $revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type'] == 'false') { echo 'display: none'; } ?>"></div>
								<label class="col-sm-2 control-label" style="font-weight: normal; <?php if (!isset($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type']) || $revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type'] == 'false') { echo 'display: none'; } ?>">По умолчанию:</label>
								<div class="col-sm-10" <?php if (!isset($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type']) || $revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type'] == 'false') { echo 'style="display: none"'; } ?>>
									<label class="radio-inline">
										<input type="radio" name="revtheme_filter[filter_attribute][<? echo $attribute['attribute_id']; ?>][attribute_vid]" value="1" <?php if ((isset($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_vid']) && $revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_vid'])) { echo 'checked'; } ?> /><span>Скрыт</span>
									</label>
									<label class="radio-inline">
										<input type="radio" name="revtheme_filter[filter_attribute][<? echo $attribute['attribute_id']; ?>][attribute_vid]" value="0" <?php if ((isset($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_vid']) && !$revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_vid']) || !isset($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_vid'])) { echo 'checked'; } ?> /><span>Открыт</span>
									</label>
								</div>
								<div class="clearfix" style="margin: 10px 0; <?php if (!isset($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type']) || $revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type'] == 'false') { echo 'display: none'; } ?>"></div>
								<label class="col-sm-2 control-label" style="font-weight: normal; <?php if (!isset($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type']) || $revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type'] == 'false') { echo 'display: none'; } ?>">Не показывать в категориях:</label>
								<div class="col-sm-8" <?php if (!isset($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type']) || $revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_type'] == 'false') { echo 'style="display: none"'; } ?>>
									<div class="well well-sm" style="min-height: 100px; max-height: 205px; overflow: auto; margin-bottom: 10px;">
										<table class="table table-striped">
											<?php foreach ($categories as $category) { ?>
											<tr>
												<td class="checkbox">
													<label>
														<input type="checkbox" name="revtheme_filter[filter_attribute][<? echo $attribute['attribute_id']; ?>][attribute_categories][]" value="<? echo $category['category_id']; ?>" <? echo (isset($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_categories']) && is_array($revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_categories']) && in_array($category['category_id'], $revtheme_filter['filter_attribute'][$attribute['attribute_id']]['attribute_categories'])) ? 'checked' : '' ?>/>
														<? echo $category['name']; ?>
													</label>
												</td>
											</tr>
											<?php } ?>
										</table>
									</div>
									<a onclick="$(this).parent().find(':checkbox').prop('checked', true);">Выделить все</a> / 
									<a onclick="$(this).parent().find(':checkbox').prop('checked', false);">Снять выделения</a>
								</div>
							</div>
						<?php } ?>
					</div>
					
					<div class="tab-pane text-style" id="tab_4">
						<div class="form-group">
							<label class="col-sm-2 control-label">Производитель:</label>
							<div class="col-sm-5">
								<input type="checkbox" name="revtheme_filter[filter_m_grs]" value="1" <?php if (isset($revtheme_filter['filter_m_grs']) && $revtheme_filter['filter_m_grs']) { ?> checked <?php } ?> />
							</div>
						</div>
						<h4>Опции</h4>
						<?php foreach ($options as $option) { ?>
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $option['name']; ?>:</label>
								<div class="col-sm-5">
									<input type="checkbox" name="revtheme_filter[filter_o_grs][]" value="<? echo $option['option_id']; ?>" <?php if (isset($filter_o_grs) && !empty($filter_o_grs) && in_array($option['option_id'], $filter_o_grs)) { ?> checked <?php } ?> />
								</div>
							</div>
						<?php } ?>
						<br/>
						<h4>Атрибуты</h4>
						<?php foreach ($attributes as $attribute) { ?>
							<div class="form-group">
								<label class="col-sm-2 control-label"><?php echo $attribute['name']; ?>:</label>
								<div class="col-sm-5">
									<input type="checkbox" name="revtheme_filter[filter_a_grs][]" value="<? echo $attribute['attribute_id']; ?>" <?php if (isset($filter_a_grs) && !empty($filter_a_grs) && in_array($attribute['attribute_id'], $filter_a_grs)) { ?> checked <?php } ?> />
								</div>
							</div>
						<?php } ?>
					</div>
				</div>
			</div>
        </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>
<script type="text/javascript"><!--

//--></script>