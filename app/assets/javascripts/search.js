var app2 = window.app = {}; 
app2.Subjects = function() {   
  this._input = $('#title-search-txt');    
  this._initAutocomplete(); 
};  

app2.Subjects.prototype = {    
  _initAutocomplete: function() { 
    this._input            
      .autocomplete({                 
       source: '/products/search',                 
       appendTo: '#title-search-results',                 
       select: $.proxy(this._select, this)            
       })             
       .autocomplete('instance')._renderItem = $.proxy(this._render, this);     
	},       
	_render: function(ul, item) {        
	  var markup = [             
			'<span class="division">' + item.title_en+ ' ' + '</span>',             
			'<span class="name">' + item.title_ko + ' '  + ' </span>'        
			 ];         
			return $('<li>') 
         .append(markup.join(''))             
				 .appendTo(ul);     
	},      
	_select: function(e, ui) {        
		 this._input.val(ui.item.title_ko);          
		 return false;     
	} 
};
