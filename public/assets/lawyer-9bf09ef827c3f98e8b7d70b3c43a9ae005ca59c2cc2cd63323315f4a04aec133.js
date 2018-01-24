(function() {
  $(function() {
    $('#filter_btn').click(function() {
      if ($(this).attr('aria-expanded') === "true") {
        return this.innerHTML = '<span class="glyphicon glyphicon-chevron-down"></span>';
      } else {
        return this.innerHTML = '<span class="glyphicon glyphicon-chevron-up"></span>';
      }
    });
    $('.clickable-row').click(function() {
      return window.location = $(this).data('href');
    });
    return $('#departament').change(function() {
      var input_state, output_state;
      input_state = $(this);
      output_state = $('#cities');
      return $.getJSON('/cities/' + $(this).val(), function(data) {
        output_state.empty();
        output_state.append('<option value="" selected="selected">SELECCIONE</option>');
        return $.each(data, function(i) {
          var opt;
          opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>';
          return output_state.append(opt);
        });
      });
    });
  });

}).call(this);
