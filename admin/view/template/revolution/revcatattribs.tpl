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
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-revcatattribs" class="form-horizontal">
			<div class="form-group" style="padding:0;">
			<div style="padding:0 10px;">Для вывода атрибутов в категории должна быть включена настройка: Основные настройки - Каталог товаров - Вывод описания или характеристик товара - Показывать атрибуты: Да</div><br>
				<table class="table table-hover">
					<thead>
						<tr>
							<td class="left">Группа</td>
							<td class="left">Атрибут</td>
							<td class="left">Показывать</td>
							<td class="left">Заменить значение атрибута на название</td>
						</tr>
					</thead>
					<tbody>
						<?php foreach($attributes as $attribute) {?>
							<tr>
								<td class="left"><?php echo $attribute['attribute_group']; ?></td>              
								<td class="left"><?php echo $attribute['name']; ?></td>              
								<td>
									<select class="form-control" name="revtheme_catattribs_settings[attributes][<?php echo $attribute['attribute_id']; ?>][show]">
										<option value="0" <?php echo (isset($revtheme_catattribs_settings['attributes'][$attribute['attribute_id']]['show']) && $revtheme_catattribs_settings['attributes'][$attribute['attribute_id']]['show'] == '0') ? 'selected="selected"' : "" ;?>>Не показывать</option>
										<option value="1" <?php echo (isset($revtheme_catattribs_settings['attributes'][$attribute['attribute_id']]['show']) && $revtheme_catattribs_settings['attributes'][$attribute['attribute_id']]['show'] == '1') ? 'selected="selected"' : "" ;?>>Показывать</option>
										<option value="2" <?php echo (isset($revtheme_catattribs_settings['attributes'][$attribute['attribute_id']]['show']) && $revtheme_catattribs_settings['attributes'][$attribute['attribute_id']]['show'] == '2') ? 'selected="selected"' : "" ;?>>С заменой</option>
									</select>
								</td>
								<td class="left">
									<input type="text" class="form-control" name="revtheme_catattribs_settings[attributes][<?php echo $attribute['attribute_id']; ?>][replace]" value="<?php echo isset($revtheme_catattribs_settings['attributes'][$attribute['attribute_id']]['replace']) ? $revtheme_catattribs_settings['attributes'][$attribute['attribute_id']]['replace'] : '';?>">
								</td>  
							</tr>
						<?php } ?>
					</tbody>
				</table>
			</div>
        </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>