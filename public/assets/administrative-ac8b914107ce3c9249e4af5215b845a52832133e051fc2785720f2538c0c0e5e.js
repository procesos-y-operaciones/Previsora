(function() {
  $(function() {
    var case_state_rule, coactive_radicate_and_coactive_value_cents_rule, coactive_rule, comm, correspondency_radicate_rule, ensurance_value_rule, exer, initial_values, litigation_source_rule, money_type_rule, more_policies_rule, num, numSiniestro, office_rule, policies_and_sinisters_rule, poly, radicate_rule, subprocessClass_rule;
    initial_values = function() {
      if ($('#contingency_reason').val() === "NO APLICA") {
        return $('#contingency_reason').val("PENDIENTE");
      }
    };
    initial_values();
    subprocessClass_rule = function() {
      var v_option;
      v_option = document.getElementById('subprocessClass').value;
      if (v_option === 'COLJUEGOS') {
        $('#gubernatorial_coljuegos').prop('disabled', false);
        $('#gubernatorial_coljuegos').show();
        $('#gubernatorial_coljuegos').val("");
        $('#gubernatorial_ordinarie').prop('disabled', true);
        $('#gubernatorial_ordinarie').hide();
        $('#departament_coljuegos').prop('disabled', false);
        $('#departament_coljuegos').show();
        $('#departament_coljuegos').trigger("change");
        $('#departament_ordinarie').prop('disabled', true);
        $('#departament_ordinarie').hide();
        $('#departament_ordinarie').val("");
        $('#protection_coljuegos').prop('disabled', false);
        $('#protection_coljuegos').show();
        $('#protection_ordinarie').prop('disabled', true);
        $('#protection_ordinarie').hide();
        $('#protection_ordinarie').val("");
        $('#moneyCents').prop('disabled', false);
        $('#moneyCents').show();
        $('#moneyType').prop('disabled', true);
        $('#moneyType').hide();
        $('#moneyType').val("");
        document.getElementById('dolarValueCents').readOnly = true;
        $('#dolarValueCents').val("0");
        $('#office_name_col').prop('disabled', false);
        $('#office_name_col').show();
        $('#office_name_ord').prop('disabled', true);
        $('#office_name_ord').hide();
        return $('#office_name_ord').val("");
      } else {
        $('#gubernatorial_coljuegos').prop('disabled', true);
        $('#gubernatorial_coljuegos').hide();
        $('#gubernatorial_ordinarie').prop('disabled', true);
        $('#gubernatorial_ordinarie').show();
        $('#departament_coljuegos').prop('disabled', true);
        $('#departament_coljuegos').hide();
        $('#departament_ordinarie').prop('disabled', false);
        $('#departament_ordinarie').show();
        $('#protection_coljuegos').prop('disabled', false);
        $('#protection_coljuegos').show();
        $('#protection_ordinarie').prop('disabled', true);
        $('#protection_ordinarie').hide();
        $('#protection_ordinarie').val("");
        $('#moneyCents').prop('disabled', true);
        $('#moneyCents').hide();
        $('#moneyType').prop('disabled', false);
        $('#moneyType').show();
        document.getElementById('dolarValueCents').readOnly = false;
        $('#office_name_col').prop('disabled', true);
        $('#office_name_col').hide();
        $('#office_name_ord').prop('disabled', false);
        $('#office_name_ord').show();
        $('#protection_coljuegos').prop('disabled', true);
        $('#protection_coljuegos').hide();
        $('#protection_ordinarie').prop('disabled', false);
        return $('#protection_ordinarie').show();
      }
    };
    $('#subprocessClass').change(function() {
      return subprocessClass_rule();
    });
    subprocessClass_rule();
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
    numSiniestro = "";
    num = numSiniestro.concat(document.getElementById("number").value);
    exer = numSiniestro.concat(document.getElementById("exercise").value);
    poly = numSiniestro.concat(document.getElementById("branch_policy").value);
    comm = numSiniestro.concat(document.getElementById("branch_commercial").value);
    litigation_source_rule = function() {
      var v_option;
      v_option = document.getElementById('litigationSource').value;
      if (v_option === '2') {
        document.getElementById('policyCents').readOnly = false;
        $('#protection').prop('disabled', false);
        document.getElementById('number').readOnly = false;
        document.getElementById('exercise').readOnly = false;
        $('#branch_policy').prop('disabled', false);
        $('#branch_commercial').prop('disabled', false);
        return $("#sinister").val(num + "-" + exer + "-" + poly + "-" + comm);
      } else {
        document.getElementById('policyCents').readOnly = true;
        $('#policyCents').val("0");
        $('#protection').prop('disabled', true);
        $('#protection').val("");
        document.getElementById('number').readOnly = true;
        $('#number').val("0");
        document.getElementById('exercise').readOnly = true;
        $('#exercise').val("0");
        $('#branch_policy').prop('disabled', true);
        $('#branch_policy').val("0");
        $('#branch_commercial').prop('disabled', true);
        $('#branch_commercial').val("0");
        return $('#sinister').val('NO APLICA');
      }
    };
    $('#litigationSource').change(function() {
      return litigation_source_rule();
    });
    litigation_source_rule();
    $("#number").change(function() {
      num = numSiniestro.concat(document.getElementById("number").value);
      return $("#sinister").val(num + "-" + exer + "-" + poly + "-" + comm);
    });
    $('#exercise').change(function() {
      exer = numSiniestro.concat(document.getElementById("exercise").value);
      return $("#sinister").val(num + "-" + exer + "-" + poly + "-" + comm);
    });
    $('#branch_policy').change(function() {
      poly = numSiniestro.concat(document.getElementById("branch_policy").value);
      return $("#sinister").val(num + "-" + exer + "-" + poly + "-" + comm);
    });
    $('#branch_commercial').change(function() {
      comm = numSiniestro.concat(document.getElementById("branch_commercial").value);
      return $("#sinister").val(num + "-" + exer + "-" + poly + "-" + comm);
    });
    ensurance_value_rule = function() {
      var ensuranceValue, subClass;
      ensuranceValue = document.getElementById('ensuranceValue').value;
      subClass = document.getElementById('subprocessClass').value;
      if (ensuranceValue >= 1000000000 && subClass === '71') {
        $('#reinsuranceTypeSF').prop('disabled', true);
        $('#reinsuranceTypeSF').hide();
        $('#reinsuranceType').prop('disabled', false);
        return $('#reinsuranceType').show();
      } else {
        $('#reinsuranceTypeSF').prop('disabled', false);
        $('#reinsuranceTypeSF').show();
        $('#reinsuranceType').prop('disabled', true);
        $('#reinsuranceType').hide();
        return $('#reinsuranceType').val("");
      }
    };
    $('#ensuranceValue').change(function() {
      return ensurance_value_rule();
    });
    $('#subprocessClass').change(function() {
      return ensurance_value_rule();
    });
    ensurance_value_rule();
    policies_and_sinisters_rule = function() {
      var polici, sinister;
      polici = $('#policies').val();
      sinister = $('#sinisters').val();
      if ((polici === "NO APLICA" && sinister === "NO APLICA") || (polici === "PENDIENTE" && sinister === "PENDIENTE")) {
        $('#more_policies').val('No');
        document.getElementById("policies").readOnly = true;
        document.getElementById("sinisters").readOnly = true;
        $("#policies").val("PENDIENTE");
        return $("#sinisters").val("PENDIENTE");
      } else {
        return $('#more_policies').val('Si');
      }
    };
    policies_and_sinisters_rule();
    more_policies_rule = function() {
      var v_option;
      v_option = document.getElementById("more_policies").value;
      if (v_option === "Si") {
        document.getElementById("policies").readOnly = false;
        document.getElementById("sinisters").readOnly = false;
      }
      if (v_option === "No") {
        document.getElementById("policies").readOnly = true;
        $("#policies").val("PENDIENTE");
        document.getElementById("sinisters").readOnly = true;
        return $("#sinisters").val("PENDIENTE");
      }
    };
    $('#more_policies').change(function() {
      return more_policies_rule();
    });
    money_type_rule = function() {
      var v_option;
      v_option = document.getElementById("moneyType").value;
      if (v_option === "1") {
        document.getElementById("dolarValueCents").readOnly = true;
        return $("#dolarValueCents").val(0);
      } else {
        return document.getElementById("dolarValueCents").readOnly = false;
      }
    };
    $('#moneyType').change(function() {
      return money_type_rule();
    });
    money_type_rule();
    office_rule = function() {
      var v_option;
      v_option = document.getElementById('office_name_ord').value;
      if (v_option === "OTRO") {
        $('#office_text').prop("disabled", false);
        return $('#office_text').show();
      } else {
        $('#office_text').prop("disabled", true);
        $('#office_text').hide();
        return $('#office_text').val("");
      }
    };
    $('#office_name_ord').change(function() {
      return office_rule();
    });
    office_rule();
    case_state_rule = function() {
      var v_option;
      v_option = document.getElementById("caseState").value;
      if (v_option === "1") {
        $('#currentStageVer').prop("disabled", false);
        $('#fail_value').prop("disabled", true);
        $('#fail_value').val("0");
        $('#desition_date').prop("disabled", true);
        $('#desition_date').prop("0-0-0");
        $('#fail_previ').prop("disabled", true);
        $('#fail_previ').val("0");
        $('#caseTermination').prop("disabled", true);
        return $('#caseTermination').val("");
      } else {
        $('#currentStageVer').prop("disabled", true);
        $('#currentStageVer').val("1");
        $('#fail_value').prop("disabled", false);
        $('#desition_date').prop("disabled", false);
        $('#fail_previ').prop("disabled", true);
        return $('#caseTermination').prop("disabled", false);
      }
    };
    $('#caseState').change(function() {
      return case_state_rule();
    });
    case_state_rule();
    coactive_radicate_and_coactive_value_cents_rule = function() {
      var coactiveRadicate, coactiveValueCents, garnishValue;
      coactiveRadicate = $('#coactive_radicate').val();
      coactiveValueCents = $('#coactive_value_cents').val();
      garnishValue = $('#garnish_value').val();
      if (coactiveRadicate === "NO APLICA" && coactiveValueCents === "0" && garnishValue === "0") {
        $('#coactive').val('No');
        document.getElementById("coactive_radicate").readOnly = true;
        document.getElementById("coactive_value_cents").readOnly = true;
        document.getElementById("garnish_value").readOnly = true;
        return $('#coactive_radicate').val("PENDIENTE");
      } else {
        return $('#coactive').val('Si');
      }
    };
    coactive_radicate_and_coactive_value_cents_rule();
    coactive_rule = function() {
      var v_option;
      v_option = document.getElementById("coactive").value;
      if (v_option === "Si") {
        document.getElementById("coactive_radicate").readOnly = false;
        document.getElementById("coactive_value_cents").readOnly = false;
        document.getElementById("garnish_value").readOnly = false;
      }
      if (v_option === "No") {
        document.getElementById("coactive_radicate").readOnly = true;
        $("#coactive_radicate").val("NO APLICA");
        document.getElementById("coactive_value_cents").readOnly = true;
        $("#coactive_value_cents").val("0");
        document.getElementById("garnish_value").readOnly = true;
        return $("#garnish_value").val("0");
      }
    };
    $('#coactive').change(function() {
      return coactive_rule();
    });
    $('#departament_ordinarie').change(function() {
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
    $('#departament_ordinarie').ready(function() {
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
    $('#departament_coljuegos').change(function() {
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
    return $('#departament_coljuegos').ready(function() {
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
