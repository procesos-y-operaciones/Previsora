(function() {
  $(function() {
    return $('#departament').change(function() {
      var input_state, output_state;
      input_state = $(this);
      output_state = $('#cities');
      $.getJSON('/cities/' + $(this).val(), function(data) {
        output_state.empty();
        return output_state.append('<option value="" selected="selected">SELECCIONE</option>');
      });
      return $.each(data, function(i) {
        var opt;
        opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>';
        return output_state.append(opt);
      });
    });
  });

}).call(this);
