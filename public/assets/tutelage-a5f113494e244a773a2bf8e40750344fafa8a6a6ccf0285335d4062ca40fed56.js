(function() {
  $(function() {
    var correspondency_radicate_rule, desacate_rule, initial_values, objection_rule, office_rule, radicate_rule;
    initial_values = function() {
      if ($('#process_radicate').val() === "NO APLICA") {
        return $('#process_radicate').val("PENDIENTE");
      }
    };
    initial_values();
    correspondency_radicate_rule = function() {
      if ($('#correspondency_radicate').val() === "NO APLICA" || $('#correspondency_radicate').val() === "NO PRESENTA") {
        $('#radicate').val('No');
        document.getElementById("correspondency_radicate").readOnly = true;
        return $("#correspondency_radicate").val("NO PRESENTA");
      } else {
        return $('#radicate').val('Si');
      }
    };
    correspondency_radicate_rule();
    radicate_rule = function() {
      var v_option;
      v_option = document.getElementById("radicate").value;
      if (v_option === "Si") {
        document.getElementById("correspondency_radicate").readOnly = false;
      }
      if (v_option === "No") {
        document.getElementById("correspondency_radicate").readOnly = true;
        return $("#correspondency_radicate").val("NO PRESENTA");
      }
    };
    $('#radicate').change(function() {
      return radicate_rule();
    });
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

    /*
    objection_date_and_objecter = ->
      objectionDate = $("#objection_date").val()
      objecter = $("#objecter").val()
      if objectionDate == "" and objecter == "NO APLICA"
        $('#objection').val('No')
        document.getElementById('objection_date').readOnly = true
        $("#objection_date").val('0-0-0')
        document.getElementById('objecter').readOnly = true
        $("#objecter").val('NO APLICA')
      else
        $('#objection').val('Si')
    
    objection_date_and_objecter()
     */
    objection_rule = function() {
      var v_option;
      v_option = document.getElementById('objection').value;
      if (v_option === "No") {
        document.getElementById('objection_date').readOnly = true;
        document.getElementById('objecter').readOnly = true;
        document.getElementById('date_imp').readOnly = true;
        document.getElementById('date_notification_imp').readOnly = true;
        $('#setence_type_second_company_id').prop('disabled', true);
      }
      if (v_option === "Si") {
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
      if (v_option === "Si") {
        $('#setence_type_second_company_id').prop("disabled", false);
        document.getElementById('date_notification_desacate').readOnly = false;
        $('#sentence_type_desacate').prop("disabled", false);
        document.getElementById('date_notification_desition_desacate').readOnly = false;
        document.getElementById('date_answer_desacate').readOnly = false;
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
    return $('#departament').change(function() {
      var input_state, output_state;
      input_state = $(this);
      output_state = $('#cities');
      return $.getJSON('/cities/' + $(this).val(), function(data) {
        output_state.empty();
        return $.each(data, function(i) {
          var opt;
          opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>';
          return output_state.append(opt);
        });
      });
    });
  });

}).call(this);
