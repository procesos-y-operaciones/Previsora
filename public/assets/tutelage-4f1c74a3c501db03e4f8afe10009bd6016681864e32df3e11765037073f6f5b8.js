(function() {
  $(function() {
    var correspondency_radicate_rule, desacate_prerule, desacate_rule, initial_values, objection_date_and_objecter, objection_rule, office_rule, radicate_rule;
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
    objection_date_and_objecter = function() {
      var objecter, objectionDate;
      objectionDate = $("#objection_date").val();
      objecter = $("#objecter").val();
      if (objectionDate === "" && objecter === "NO APLICA") {
        $('#objection').val('No');
        document.getElementById('objection_date').readOnly = true;
        $("#objection_date").val('0-0-0');
        document.getElementById('objecter').readOnly = true;
        return $("#objecter").val('NO APLICA');
      } else {
        return $('#objection').val('Si');
      }
    };
    objection_date_and_objecter();
    objection_rule = function() {
      var v_option;
      v_option = document.getElementById('objection').value;
      if (v_option === "No") {
        document.getElementById('objection_date').readOnly = true;
        document.getElementById('objecter').readOnly = true;
      }
      if (v_option === "Si") {
        document.getElementById('objection_date').readOnly = false;
        $("#objection_date").val('0-0-0');
        document.getElementById('objecter').readOnly = false;
        return $("#objecter").val('NO APLICA');
      }
    };
    $('#objection').change(function() {
      return objection_rule();
    });
    desacate_prerule = function() {
      var val_fife, val_four, val_one, val_three, val_two;
      val_one = $('#setence_type_second_company_id').val();
      val_two = $('#date_notification_desacate').val();
      val_three = $('#sentence_type_desacate').val();
      val_four = $('#date_notification_desition_desacate').val();
      val_fife = $('#date_answer_desacate').val();
      if (val_one === "1" && val_two === "" && val_three === "1" && val_four === "" && val_fife === "") {
        $('#desacate').val('No');
        $('#setence_type_second_company_id').prop("disabled", true);
        $('#setence_type_second_company_id').val('PENDIENTE');
        $('#date_notification_desacate').prop("disabled", true);
        $('#date_notification_desacate').val('');
        $('#sentence_type_desacate').prop("disabled", true);
        $('#sentence_type_desacate').val('PENDIENTE');
        $('#date_notification_desition_desacate').prop("disabled", true);
        $('#date_notification_desition_desacate').val('');
        $('#date_answer_desacate').prop("disabled", true);
        return $('#date_answer_desacate').val('');
      } else {
        return $('#desacate').val('Si');
      }
    };
    desacate_prerule();
    desacate_rule = function() {
      var v_option;
      v_option = document.getElementById('desacate').value;
      if (v_option === "Si") {
        $('#setence_type_second_company_id').prop("disabled", false);
        document.getElementById('date_notification_desacate').readOnly = false;
        $('#sentence_type_desacate').prop("disabled", false);
        document.getElementById('date_notification_desition_desacate').readOnly = false;
        return document.getElementById('date_answer_desacate').readOnly = false;
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
        return $('#date_answer_desacate').val('');
      }
    };
    $('#desacate').change(function() {
      return desacate_rule();
    });
    return desacate_rule();
  });

}).call(this);
