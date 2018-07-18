(function() {
  $(function() {
    var departament_rule;
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
    $('#filters').on('shown.bs.collapse', function() {
      return $('#collapseButton').removeClass('fa fa-angle-double-down').addClass('fa fa-angle-double-up');
    });
    return $('#filters').on('hidden.bs.collapse', function() {
      return $('#collapseButton').removeClass('fa fa-angle-double-up').addClass('fa fa-angle-double-down');
    });
  });

}).call(this);
