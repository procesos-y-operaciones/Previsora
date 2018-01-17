(function() {
  $(function() {
    var case_id_bap_and_sise_rule, case_state_rule, case_termination_rule, coactive_radicate_and_coactive_value_cents_rule, coactive_rule, coensurance_type_rule, comm, committee_rule, correspondency_radicate_rule, cost_rule, current_stage_rule, exer, hide_all_stages, hide_all_subprocess, initial_values, join_committee_rule, litigation_source_rule, money_type_rule, more_policies_rule, num, numSiniestro, office_rule, policies_and_sinisters_rule, poly, process_class_rule, radicate_rule, reinsurance_type_rule, subprocess_civil_rule;
    initial_values = function() {
      if ($('#case_id_ekogui').val() === "NO APLICA") {
        $('#case_id_ekogui').val("PENDIENTE");
      }
      if ($('#contingency_reason').val() === "NO APLICA") {
        $('#contingency_reason').val("PENDIENTE");
      }
      if ($('#contingency_resume').val() === "NO APLICA") {
        $('#contingency_resume').val("PENDIENTE");
      }
      if ($('#facts').val() === "NO APLICA") {
        return $('#facts').val("PENDIENTE");
      }
    };
    initial_values();
    hide_all_subprocess = function() {
      $('#subprocessAdmin').prop("disabled", true);
      $('#subprocessAdmin').hide();
      $('#subprocessCivil').prop("disabled", true);
      $('#subprocessCivil').hide();
      $('#subprocessPenal').prop("disabled", true);
      $('#subprocessPenal').hide();
      $('#subprocessLaboral').prop("disabled", true);
      $('#subprocessLaboral').hide();
      $('#subprocessArbitral').prop("disabled", true);
      return $('#subprocessArbitral').hide();
    };
    hide_all_stages = function() {
      $('#judicial_admin').prop('disabled', true);
      $('#judicial_admin').hide();
      $('#judicial_penal').prop('disabled', true);
      $('#judicial_penal').hide();
      $('#judicial_laboral').prop('disabled', true);
      $('#judicial_laboral').hide();
      $('#judicial_arbitral').prop('disabled', true);
      $('#judicial_arbitral').hide();
      $('#judicial_verbal').prop('disabled', true);
      $('#judicial_verbal').hide();
      $('#judicial_verbal_sum').prop('disabled', true);
      $('#judicial_verbal_sum').hide();
      $('#judicial_monitorio').prop('disabled', true);
      $('#judicial_monitorio').hide();
      $('#judicial_ejecutivo').prop('disabled', true);
      $('#judicial_ejecutivo').hide();
      $('#judicial_declarativos').prop('disabled', true);
      $('#judicial_declarativos').hide();
      $('#judicial_sucesion').prop('disabled', true);
      $('#judicial_sucesion').hide();
      $('#judicial_liquidacion').prop('disabled', true);
      $('#judicial_liquidacion').hide();
      $('#judicial_insolvencia').prop('disabled', true);
      $('#judicial_insolvencia').hide();
      $('#judicial_voluntaria').prop('disabled', true);
      $('#judicial_voluntaria').hide();
      $('#judicial_ordinario').prop('disabled', true);
      $('#judicial_ordinario').hide();
      $('#judicial_divisorio').prop('disabled', true);
      return $('#judicial_divisorio').hide();
    };
    process_class_rule = function() {
      var v_option;
      hide_all_subprocess();
      v_option = document.getElementById("processClass").value;
      switch (v_option) {
        case "1":
          $('#subprocessAdmin').prop("disabled", false);
          return $('#subprocessAdmin').show();
        case "2":
          $('#subprocessCivil').prop("disabled", false);
          return $('#subprocessCivil').show();
        case "11":
          $('#subprocessPenal').prop("disabled", false);
          return $('#subprocessPenal').show();
        case "12":
          $('#subprocessLaboral').prop("disabled", false);
          return $('#subprocessLaboral').show();
        case "30":
          $('#subprocessArbitral').prop("disabled", false);
          return $('#subprocessArbitral').show();
      }
    };
    current_stage_rule = function() {
      var v_option;
      hide_all_stages();
      v_option = document.getElementById("processClass").value;
      switch (v_option) {
        case "1":
          $('#judicial_admin').prop('disabled', false);
          return $('#judicial_admin').show();
        case "11":
          $('#judicial_penal').prop("disabled", false);
          return $('#judicial_penal').show();
        case "12":
          $('#judicial_laboral').prop("disabled", false);
          return $('#judicial_laboral').show();
        case "30":
          $('#judicial_arbitral').prop("disabled", false);
          return $('#judicial_arbitral').show();
      }
    };
    $('#processClass').change(function() {
      process_class_rule();
      return current_stage_rule();
    });
    process_class_rule();
    current_stage_rule();
    subprocess_civil_rule = function() {
      var v_option;
      hide_all_stages();
      v_option = document.getElementById("subprocessCivil").value;
      switch (v_option) {
        case "55":
          $('#judicial_verbal').prop("disabled", false);
          return $('#judicial_verbal').show();
        case "56":
          $('#judicial_verbal_sum').prop("disabled", false);
          return $('#judicial_verbal_sum').show();
        case "57":
          $('#judicial_declarativos').prop("disabled", false);
          return $('#judicial_declarativos').show();
        case "58":
          $('#judicial_ejecutivo').prop("disabled", false);
          return $('#judicial_ejecutivo').show();
        case "59":
          $('#judicial_sucesion').prop("disabled", false);
          return $('#judicial_sucesion').show();
        case "60":
          $('#judicial_liquidacion').prop("disabled", false);
          return $('#judicial_liquidacion').show();
        case "61":
          $('#judicial_liquidacion').prop("disabled", false);
          return $('#judicial_liquidacion').show();
        case "62":
          $('#judicial_insolvencia').prop("disabled", false);
          return $('#judicial_insolvencia').show();
        case "63":
          $('#judicial_ordinario').prop("disabled", false);
          return $('#judicial_ordinario').show();
        case "64":
          $('#judicial_divisorio').prop("disabled", false);
          return $('#judicial_divisorio').show();
        case "65":
          $('#judicial_voluntaria').prop("disabled", false);
          return $('#judicial_voluntaria').show();
      }
    };
    $('#subprocessCivil').change(function() {
      return subprocess_civil_rule();
    });
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
    case_id_bap_and_sise_rule = function() {
      var bapId, sizeId;
      bapId = $('#case_id_bap').val();
      sizeId = $('#case_id_sise').val();
      if (bapId === "NO APLICA" && sizeId === "NO APLICA") {
        $('#case_id_bap').val("PENDIENTE");
        $('#case_id_sise').val("PENDIENTE");
        document.getElementById("case_id_bap").required = true;
        document.getElementById("case_id_sise").required = false;
      }
      if (bapId !== "" && bapId !== "PENDIENTE") {
        document.getElementById("case_id_bap").required = true;
        return document.getElementById("case_id_sise").required = false;
      } else {
        if (sizeId !== "" && sizeId !== "PENDIENTE") {
          document.getElementById("case_id_sise").required = true;
          return document.getElementById("case_id_bap").required = false;
        } else {
          document.getElementById("case_id_bap").required = true;
          return document.getElementById("case_id_sise").required = false;
        }
      }
    };
    case_id_bap_and_sise_rule();
    $('#case_id_bap').change(function() {
      return case_id_bap_and_sise_rule();
    });
    $('#case_id_sise').change(function() {
      return case_id_bap_and_sise_rule();
    });
    reinsurance_type_rule = function() {
      var v_option;
      v_option = document.getElementById("reinsurance_type").value;
      if (v_option === "2" || v_option === "3") {
        return document.getElementById("reinsurance_value").readOnly = false;
      } else {
        document.getElementById("reinsurance_value").readOnly = true;
        return $("#reinsurance_value").val(0);
      }
    };
    $("#reinsurance_type").change(function() {
      return reinsurance_type_rule();
    });
    reinsurance_type_rule();
    coensurance_type_rule = function() {
      var v_option;
      v_option = document.getElementById("coensurance_type").value;
      if (v_option === "2" || v_option === "3") {
        return document.getElementById("coensurance_value").readOnly = false;
      } else {
        document.getElementById("coensurance_value").readOnly = true;
        return $("#coensurance_value").val(0);
      }
    };
    $('#coensurance_type').change(function() {
      return coensurance_type_rule();
    });
    coensurance_type_rule();
    num = 0;
    exer = 0;
    poly = 0;
    comm = 0;
    numSiniestro = "";
    litigation_source_rule = function() {
      var v_option;
      v_option = document.getElementById("litigationSource").value;
      if (v_option === "2") {
        document.getElementById("policyCents").readOnly = false;
        $('#protection').prop("disabled", false);
        document.getElementById("number").readOnly = false;
        document.getElementById("exercise").readOnly = false;
        $('#branch_policy').prop("disabled", false);
        $('#branch_commercial').prop("disabled", false);
        $('#more_policies').prop("disabled", false);
        return $("#sinister").val(num + "-" + exer + "-" + poly + "-" + comm);
      } else {
        document.getElementById("policyCents").readOnly = true;
        $('#policyCents').val("0");
        $('#protection').prop("disabled", true);
        $('#protection').val("");
        document.getElementById("number").readOnly = true;
        $('#number').val("0");
        document.getElementById("exercise").readOnly = true;
        $('#exercise').val("0");
        $('#branch_policy').prop("disabled", true);
        $('#branch_policy').val("0");
        $('#branch_commercial').prop("disabled", true);
        $('#branch_commercial').val("0");
        $('#more_policies').prop("disabled", true);
        $('#more_policies').prop("disabled", true);
        return $("#sinister").val("NO APLICA");
      }
    };
    $('#litigationSource').change(function() {
      return litigation_source_rule();
    });
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
    case_state_rule = function() {
      var v_option;
      v_option = document.getElementById("caseState").value;
      if (v_option === "2") {
        $('#caseTermination').prop("disabled", false);
        $('#lastPerformance').prop("disabled", false);
        document.getElementById("lastPerformanceDate").readOnly = false;
        $('#reservedReleased').prop("disabled", false);
        return $('#recovery').prop("disabled", false);
      } else {
        $('#caseTermination').prop("disabled", true);
        $('#caseTermination').val("");
        $('#lastPerformance').prop("disabled", true);
        $('#lastPerformance').val("1");
        document.getElementById("lastPerformanceDate").readOnly = true;
        $('#lastPerformanceDate').val("0-0-0");
        $('#reservedReleased').prop("disabled", true);
        $('#reservedReleased').val("1");
        $('#recovery').prop("disabled", true);
        return $('#recovery').val("");
      }
    };
    $('#caseState').change(function() {
      return case_state_rule();
    });
    case_state_rule();
    case_termination_rule = function() {
      var v_option;
      v_option = document.getElementById("caseTermination").value;
      if (v_option === "2") {
        document.getElementById("fail_value").readOnly = false;
        document.getElementById("fail_previ").readOnly = false;
        document.getElementById("payed_value").readOnly = false;
        return document.getElementById("payment_date").readOnly = false;
      } else {
        document.getElementById("fail_value").readOnly = true;
        $('#fail_value').val("0");
        document.getElementById("fail_previ").readOnly = true;
        $('#fail_previ').val("0");
        document.getElementById("payed_value").readOnly = true;
        $('#payed_value').val("0");
        document.getElementById("payment_date").readOnly = true;
        return $('#payment_date').val("0-0-0");
      }
    };
    $('#caseTermination').change(function() {
      return case_termination_rule();
    });
    case_termination_rule();
    cost_rule = function() {
      var v_option;
      v_option = document.getElementById('cost').value;
      if (v_option === "Si") {
        return document.getElementById("cost_value").readOnly = false;
      } else {
        return document.getElementById("cost_value").readOnly = true;
      }
    };
    $('#cost').change(function() {
      return cost_rule();
    });
    cost_rule();
    coactive_radicate_and_coactive_value_cents_rule = function() {
      var coactiveRadicate, coactiveValueCents;
      coactiveRadicate = $('#coactive_radicate').val();
      coactiveValueCents = $('#coactive_value_cents').val();
      if (coactiveRadicate === "NO APLICA" && coactiveValueCents === "0") {
        $('#coactive').val('No');
        document.getElementById("coactive_radicate").readOnly = true;
        return document.getElementById("coactive_value_cents").readOnly = true;
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
      }
      if (v_option === "No") {
        document.getElementById("coactive_radicate").readOnly = true;
        $("#coactive_radicate").val("NO APLICA");
        document.getElementById("coactive_value_cents").readOnly = true;
        return $("#coactive_value_cents").val("0");
      }
    };
    $('#coactive').change(function() {
      return coactive_rule();
    });
    join_committee_rule = function() {
      var v_option;
      v_option = document.getElementById("join_committee").value;
      if (v_option === "2") {
        document.getElementById("committee_date").readOnly = false;
        return $('#committee').prop("disabled", false);
      } else {
        document.getElementById("committee_date").readOnly = true;
        $('#committee_date').val("0-0-0");
        $('#committee').prop("disabled", true);
        return $('#committee').val("1");
      }
    };
    $('#join_committee').change(function() {
      return join_committee_rule();
    });
    join_committee_rule();
    committee_rule = function() {
      var v_option;
      v_option = document.getElementById("committee").value;
      if (v_option === "2") {
        document.getElementById("reconcilie_value").readOnly = false;
        document.getElementById("auth_value").readOnly = false;
        document.getElementById("reason_conc").readOnly = true;
        $('#reason_conc').val("PENDIENTE");
        document.getElementById("reason_inv").readOnly = true;
        $('#reason_inv').val("PENDIENTE");
        document.getElementById("fail_value").readOnly = true;
        $('#fail_value').val("0");
        document.getElementById("fail_previ").readOnly = true;
        $('#fail_previ').val("0");
        document.getElementById("payed_value").readOnly = true;
        return $('#payed_value').val("0");
      } else if (v_option === "3") {
        document.getElementById("reconcilie_value").readOnly = true;
        $('#reconcilie_value').val("0");
        document.getElementById("auth_value").readOnly = true;
        $('#auth_value').val("0");
        document.getElementById("reason_conc").readOnly = false;
        document.getElementById("reason_inv").readOnly = true;
        $('#reason_inv').val("PENDIENTE");
        document.getElementById("fail_value").readOnly = false;
        document.getElementById("fail_previ").readOnly = false;
        return document.getElementById("payed_value").readOnly = false;
      } else if (v_option === "4") {
        document.getElementById("reconcilie_value").readOnly = true;
        $('#reconcilie_value').val("0");
        document.getElementById("auth_value").readOnly = true;
        $('#auth_value').val("0");
        document.getElementById("reason_conc").readOnly = true;
        $('#reason_conc').val("PENDIENTE");
        document.getElementById("reason_inv").readOnly = false;
        document.getElementById("fail_value").readOnly = false;
        document.getElementById("fail_previ").readOnly = false;
        return document.getElementById("payed_value").readOnly = false;
      } else {
        document.getElementById("reconcilie_value").readOnly = true;
        $('#reconcilie_value').val("0");
        document.getElementById("auth_value").readOnly = true;
        $('#auth_value').val("0");
        document.getElementById("reason_conc").readOnly = true;
        $('#reason_conc').val("PENDIENTE");
        document.getElementById("reason_inv").readOnly = true;
        $('#reason_inv').val("PENDIENTE");
        document.getElementById("fail_value").readOnly = false;
        document.getElementById("fail_previ").readOnly = false;
        return document.getElementById("payed_value").readOnly = false;
      }
    };
    $('#committee').change(function() {
      return committee_rule();
    });
    committee_rule();
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
