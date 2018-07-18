(function() {
  $(function() {
    var departament_rule, desacate_rule, errorMessage, initial_values, objection_rule, office_rule, radicate_rule;
    errorMessage = 'Ingrese sólo mayúsculas, numeros, guiones y/o espacios.';
    $(this).find('textarea').on('input change propertychange', function() {
      var hasError, pattern, patternRegex;
      pattern = $(this).attr('pattern');
      if (typeof pattern !== typeof void 0 && pattern !== false) {
        patternRegex = new RegExp('^' + pattern.replace(/^\^|\$$/g, '') + '$', 'g');
        hasError = !$(this).val().match(patternRegex);
        if (typeof this.setCustomValidity === 'function') {
          return this.setCustomValidity(hasError ? errorMessage : '');
        } else {
          $(this).toggleClass('error', !!hasError);
          $(this).toggleClass('ok', !hasError);
          if (hasError) {
            return $(this).attr('title', errorMessage);
          } else {
            return $(this).removeAttr('title');
          }
        }
      }
    });
    initial_values = function() {
      if ($('#process_radicate').val() === "NO APLICA") {
        $('#process_radicate').val("PENDIENTE");
      }
      if ($('#active_part').val() === "NO APLICA") {
        $('#active_part').val("PENDIENTE");
      }
      if ($('#passive_part').val() === "NO APLICA") {
        $('#passive_part').val("PENDIENTE");
      }
      if ($('#objecter').val() === "NO APLICA") {
        $('#objecter').val("PENDIENTE");
      }
      if ($('#office_text').val() === "NO APLICA") {
        $('#office_text').val("PENDIENTE");
      }
      if ($('#document_active_part').val() === "NO APLICA") {
        $('#document_active_part').val("PENDIENTE");
      }
      if ($('#document_passive_part').val() === "NO APLICA") {
        return $('#document_passive_part').val("PENDIENTE");
      }
    };
    initial_values();
    radicate_rule = function() {
      var v_option;
      v_option = document.getElementById("radicate").value;
      if (v_option === "true") {
        document.getElementById("correspondency_radicate").readOnly = false;
      }
      if (v_option === "false") {
        document.getElementById("correspondency_radicate").readOnly = true;
        return $("#correspondency_radicate").val("NO PRESENTA");
      }
    };
    $('#radicate').change(function() {
      return radicate_rule();
    });
    radicate_rule();
    office_rule = function() {
      var v_option;
      v_option = document.getElementById('office').value;
      if (v_option === 'OTRO') {
        $('#office_text').prop("disabled", false);
        return $('#office_text').show();
      } else {
        $('#office_text').prop("disabled", true);
        return $('#office_text').hide();
      }
    };
    $('#office').change(function() {
      return office_rule();
    });
    office_rule();
    objection_rule = function() {
      var v_option;
      v_option = document.getElementById('objection').value;
      if (v_option === "false") {
        document.getElementById('objection_date').readOnly = true;
        document.getElementById('objecter').readOnly = true;
        document.getElementById('date_imp').readOnly = true;
        document.getElementById('date_notification_imp').readOnly = true;
        $('#setence_type_second_company_id').prop('disabled', true);
      }
      if (v_option === "true") {
        document.getElementById('objection_date').readOnly = false;
        document.getElementById('objecter').readOnly = false;
        document.getElementById('date_imp').readOnly = false;
        document.getElementById('date_notification_imp').readOnly = false;
        return $('#setence_type_second_company_id').prop('disabled', false);
      }
    };
    $('#objection').change(function() {
      return objection_rule();
    });
    $('#objection').ready(function() {
      return objection_rule();
    });

    /*
    #¿Hay desacato?
    desacate_prerule = ->
      val_one = $('#setence_type_second_company_id').val()
      val_two = $('#date_notification_desacate').val()
      val_three = $('#sentence_type_desacate').val()
      val_four = $('#date_notification_desition_desacate').val()
      val_fife = $('#date_answer_desacate').val()
      if val_one == "1" and val_two == "" and val_three == "1" and val_four == "" and val_fife == ""
        $('#desacate').val('No')
        $('#setence_type_second_company_id').prop( "disabled", true )
        $('#setence_type_second_company_id').val('PENDIENTE')
        $('#date_notification_desacate').prop( "disabled", true )
        $('#date_notification_desacate').val('')
        $('#sentence_type_desacate').prop( "disabled", true )
        $('#sentence_type_desacate').val('PENDIENTE')
        $('#date_notification_desition_desacate').prop( "disabled", true )
        $('#date_notification_desition_desacate').val('')
        $('#date_answer_desacate').prop( "disabled", true )
        $('#date_answer_desacate').val('')
      else
        $('#desacate').val('Si')
    
    desacate_prerule()
     */
    desacate_rule = function() {
      var v_option;
      v_option = document.getElementById('desacate').value;
      if (v_option === "true") {
        $('#setence_type_second_company_id').prop("disabled", false);
        $('#date_notification_desacate').prop("disabled", false);
        $('#sentence_type_desacate').prop("disabled", false);
        $('#date_notification_desition_desacate').prop("disabled", false);
        $('#date_answer_desacate').prop("disabled", false);
        return $('#sentence_type_desacate').prop("disabled", false);
      } else {
        $('#setence_type_second_company_id').prop("disabled", true);
        $('#setence_type_second_company_id').val('PENDIENTE');
        $('#date_notification_desacate').prop("disabled", true);
        $('#date_notification_desacate').val('');
        $('#sentence_type_desacate').prop("disabled", true);
        $('#sentence_type_desacate').val('PENDIENTE');
        $('#date_notification_desition_desacate').prop("disabled", true);
        $('#date_notification_desition_desacate').val('');
        $('#date_answer_desacate').prop("disabled", true);
        $('#date_answer_desacate').val('');
        return $('#sentence_type_desacate').prop("disabled", true);
      }
    };
    $('#desacate').change(function() {
      return desacate_rule();
    });
    $('#desacate').ready(function() {
      return desacate_rule();
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
    return departament_rule();
  });

}).call(this);
