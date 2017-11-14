$(document).ready(function(){
var ajaxSearch = $('.search input[name=\'search\']');
	var customAutocomplete = null;
	ajaxSearch.autocomplete({
		delay: 500,
		responsea : function (items){
			if (items.length) {
				for (i = 0; i < items.length; i++) {
					this.items[items[i]['value']] = items[i];
				}
			}
			var html='';
			if(items.length){
				$.each(items,function(key,item){
					if(item.product_id!=0){
						html += '<li data-value="' + item['value'] + '"><a href="#">';
						html += '<div class="ajaxadvance">';
						html += '<div class="image">';
						html += '<img title="'+item.name+'" src="'+item.image+'"/>';
						html += '<div class="mask"></div>';
						html += '</div>';
						html += '<div class="content">';
						html += '<div class="name">'+item.label+'</div>';
						if(item.price){
							html += '<div class="price">';
								if (!item.special) {
									html +=	item.price;
								} else {	
									html +=	'<span class="price-old">'+ item.price +'</span> <span class="price-new">'+ item.special +'</span>';
								}	
							html +=	'</div>';
						}
						html +='</div>';
						html += '</div></a></li>'
					}
				});
			}	
			if (html) {
				ajaxSearch.siblings('ul.dropdown-menu').show();
			} else {
				ajaxSearch.siblings('ul.dropdown-menu').hide();
			}

			$(ajaxSearch).siblings('ul.dropdown-menu').html(html);
		},
		source: function(request, response) {
		customAutocomplete = this;
		var filter_category_id = $('.search input[name=\'category_id\']').val();
			$.ajax({			
				url: 'index.php?route=common/search/ajaxLiveSearch',
				data: 'filter_name=' + encodeURIComponent(request) + '&filter_category_id=' + filter_category_id,
				dataType : 'json',
				success : function(json) {
					customAutocomplete.responsea($.map(json, function(item) {
						return {
							label: item.name,
							name: item.name1,
							value: item.product_id,
							image: item.image,
							price: item.price,
							special: item.special,
							reviews: item.reviews,
						}
					}));
				}
			});
		},
		select : function (ui){
			return false;
		},
		selecta: function(ui) {
			if(ui.value){
				location = 'index.php?route=product/product&product_id='+ui.value;
			}else{
			$('.search input[name=\'search\']').parent().find('button').trigger('click');
			}
			return false;
		},
		focus: function(event, ui) {
			return false;
		}
	});
	
	ajaxSearch.siblings('ul.dropdown-menu').delegate('a', 'click', function(){
		value = $(this).parent().attr('data-value');
		if (value && customAutocomplete.items[value]) {
			customAutocomplete.selecta(customAutocomplete.items[value]);
		}
	});					
});