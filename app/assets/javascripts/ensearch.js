var appa = window.app = {};
appa.Subjects = function() {
    this._input = $('#title-search-txt2');
    this._initAutocomplete();
};

appa.Subjects.prototype = {
    _initAutocomplete: function() {
        this._input
            .autocomplete({
                source: '/enproducts/search',
                appendTo: '#title-search-results2',
                select: $.proxy(this._select, this)
            })
            .autocomplete('instance')._renderItem = $.proxy(this._render, this);
    },
    _render: function(ul, item) {
        var markup = [
            '<span class="name">' + item.title_en + ' '  + ' </span>'
        ];
        return $('<li>')
            .append(markup.join(''))
            .appendTo(ul);
    },
    _select: function(e, ui) {
        this._input.val(ui.item.title_en);
        return false;
    }
};
