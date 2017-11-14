<div id="ok_groups">
	<div id="ok_group_widget"></div>
	<script>
	!function (d, id, did, st) {
	  var js = d.createElement("script");
	  js.src = "https://connect.ok.ru/connect.js";
	  js.onload = js.onreadystatechange = function () {
	  if (!this.readyState || this.readyState == "loaded" || this.readyState == "complete") {
		if (!this.executed) {
		  this.executed = true;
		  setTimeout(function () {
			OK.CONNECT.insertGroupWidget(id,did,st);
		  }, 0);
		}
	  }}
	  d.documentElement.appendChild(js);
	}(document,"ok_group_widget","<?php echo $id; ?>",'{"width":<?php echo $width; ?>,"height":<?php echo $height; ?>}');
	</script>
</div>