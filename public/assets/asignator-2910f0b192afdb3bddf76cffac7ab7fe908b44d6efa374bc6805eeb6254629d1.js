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
    $('#departament').change(function() {
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
    return $('#all').click(function() {
      var inputs;
      if ($('#all').is(':checked')) {
        inputs = document.getElementsByTagName("input");
        return $(inputs).each(function() {
          if ($(this).attr('type') === 'checkbox' && $(this).attr('id') !== 'all') {
            return $(this).prop('checked', true);
          }
        });
      } else {
        inputs = document.getElementsByTagName("input");
        return $(inputs).each(function() {
          if ($(this).attr('type') === 'checkbox' && $(this).attr('id') !== 'all') {
            return $(this).prop('checked', false);
          }
        });
      }
    });
  });

}).call(this);
