(function() {
  $(function() {
    var departament_rule;
    $('.clickable-row').click(function() {
      return window.location = $(this).data('href');
    });
    departament_rule = function() {
      var value;
      value = $('#cities').val();
      return $.getJSON('/cities/' + $('#departament').val(), function(data) {
        $('#cities').empty();
        $('#cities').append('<option value="">SELECCIONE</option>');
        return $.each(data, function(i) {
          var opt;
          if (value === data[i].code) {
            opt = '<option selected="selected" value="' + data[i].code + '">' + data[i].name + '</option>';
          } else {
            opt = '<option value="' + data[i].code + '">' + data[i].name + '</option>';
          }
          return $('#cities').append(opt);
        });
      });
    };
    $('#departament').change(function() {
      return departament_rule();
    });
    departament_rule();
    $('#all').click(function() {
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
    $('#filters').on('shown.bs.collapse', function() {
      return $('#collapseButton').removeClass('fa fa-angle-double-down').addClass('fa fa-angle-double-up');
    });
    return $('#filters').on('hidden.bs.collapse', function() {
      return $('#collapseButton').removeClass('fa fa-angle-double-up').addClass('fa fa-angle-double-down');
    });
  });

}).call(this);
