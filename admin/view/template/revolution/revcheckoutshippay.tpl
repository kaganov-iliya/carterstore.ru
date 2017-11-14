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
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $heading_title; ?></h3>
      </div>
      <div class="panel-body" style="padding: 0;">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-revcatattribs" class="form-horizontal">
		<table class="table table-revolution">
			<thead>
				<tr>
					<td class="text-left">Способ доставки</td>
					<td class="text-center">Показывать адрес</td>
					<td class="text-left">Способ оплаты</td>
				</tr>
			</thead>
			<tbody>
				<?php foreach($shipping_extensions as $ship) { ?>
					<tr>
						<td class="col-sm-2"><?php echo $ship['name'];?></td>
						<td class="col-sm-2 text-center">
							<?php if (isset($revtheme_revcheckoutshippay[$ship['cod']]) && in_array('adres_on', $revtheme_revcheckoutshippay[$ship['cod']])) { ?>
									<input type="checkbox" name="revtheme_revcheckoutshippay[<?php echo $ship['cod'];?>][]" value="adres_on" checked="checked" /> Да
									<?php } else { ?>
									<input type="checkbox" name="revtheme_revcheckoutshippay[<?php echo $ship['cod'];?>][]" value="adres_on"/> Да
									<?php } ?>
						</td>
						<td class="col-sm-8">
							<div class="well well-sm" style="max-height: 250px; overflow: auto; margin-bottom: 5px;">
							<?php foreach ($payment_extensions as $payment) { ?>
								<div class="checkbox">
									<label>
									<?php if (isset($revtheme_revcheckoutshippay[$ship['cod']]) && in_array($payment['cod'], $revtheme_revcheckoutshippay[$ship['cod']])) { ?>
									<input type="checkbox" name="revtheme_revcheckoutshippay[<?php echo $ship['cod'];?>][]" value="<?php echo $payment['cod'];?>" checked="checked" />
									<?php echo $payment['name'];?>
									<?php } else { ?>
									<input type="checkbox" name="revtheme_revcheckoutshippay[<?php echo $ship['cod'];?>][]" value="<?php echo $payment['cod'];?>"/>
									<?php echo $payment['name'];?>
									<?php } ?>
									</label>
								</div>
							<?php } ?>
							</div>
							<a onclick="$(this).parent().find(':checkbox').prop('checked', true);"><?php echo $text_select_all; ?></a> / <a onclick="$(this).parent().find(':checkbox').prop('checked', false);"><?php echo $text_unselect_all; ?></a>
						</td>
					</tr>
				<?php } ?>
			</tbody>
		</table>
		
		
		
		
			
        </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>