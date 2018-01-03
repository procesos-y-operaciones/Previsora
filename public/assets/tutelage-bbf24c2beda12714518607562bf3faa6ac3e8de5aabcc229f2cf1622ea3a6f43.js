(function() {
  $(document).on('turbolinks:load', function() {
    var desacate_rule, objection_rule, office_rule;
    objection_rule = function() {
      var v_option;
      v_option = document.getElementById('objection').value;
      if (v_option === "No") {
        document.getElementById('objection_date').readOnly = true;
        document.getElementById('objecter').readOnly = true;
      }
      if (v_option === "Si") {
        document.getElementById('objection_date').readOnly = false;
        return document.getElementById('objecter').readOnly = false;
      }
    };
    $('#objection').change(function() {
      return objection_rule();
    });
    objection_rule();
    desacate_rule = function() {
      var v_option;
      v_option = document.getElementById('desacate').value;
      if (v_option === "No") {
        document.getElementById('date_notification_desacate').readOnly = true;
        document.getElementById('date_answer_desacate').readOnly = true;
        document.getElementById('date_notification_desition_desacate').readOnly = true;
        $('#setence_type_second_company').prop("disabled", true);
        $('#sentence_type_desacate').prop("disabled", true);
      }
      if (v_option === "Si") {
        document.getElementById('date_notification_desacate').readOnly = false;
        document.getElementById('date_answer_desacate').readOnly = false;
        document.getElementById('date_notification_desition_desacate').readOnly = false;
        $('#setence_type_second_company').prop("disabled", false);
        return $('#sentence_type_desacate').prop("disabled", false);
      }
    };
    $('#desacate').change(function() {
      return desacate_rule();
    });
    desacate_rule();
    office_rule = function() {
      var v_option;
      v_option = document.getElementById('office').value;
      if (v_option === "OTRO") {
        $('#office_text').show();
        return $('#office_text').prop("disabled", false);
      } else {
        $('#office_text').hide();
        return $('#office_text').prop("disabled", true);
      }
    };
    $('#office').change(function() {
      return office_rule();
    });
    return office_rule();
  });

}).call(this);
