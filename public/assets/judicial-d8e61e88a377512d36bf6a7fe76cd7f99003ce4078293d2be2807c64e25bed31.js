(function() {
  $(document).on('turbolinks:load', function() {
    var case_state_rule, case_termination_rule, coactive_rule, coensurance_type_rule, comm, committee_rule, cost_rule, exer, hide_all_selectors, join_committee_rule, litigation_source_rule, money_type_rule, more_policies_rule, num, numSiniestro, office_rule, poly, process_class_rule, radicate_rule, reinsurance_type_rule, subprocess_admin_rule, subprocess_arbitral_rule, subprocess_civil_rule, subprocess_laboral_rule, subprocess_penal_rule;
    radicate_rule = function() {
      var v_option;
      v_option = document.getElementById("radicate").value;
      if (v_option === "Si") {
        document.getElementById("correspondency_radicate").readOnly = false;
        document.getElementById("correspondency_radicate").required = true;
        $("#correspondency_radicate").val("");
      }
      if (v_option === "No") {
        document.getElementById("correspondency_radicate").readOnly = true;
        document.getElementById("correspondency_radicate").required = false;
        return $("#correspondency_radicate").val("NO PRESENTA");
      }
    };
    $('#radicate').change(function() {
      return radicate_rule();
    });
    radicate_rule();
    coactive_rule = function() {
      var v_option;
      v_option = document.getElementById("coactive").value;
      if (v_option === "Si") {
        document.getElementById("coactive_radicate").readOnly = false;
        document.getElementById("coactive_value_cents").readOnly = false;
      }
      if (v_option === "No") {
        document.getElementById("coactive_radicate").readOnly = true;
        return document.getElementById("coactive_value_cents").readOnly = true;
      }
    };
    $('#coactive').change(function() {
      return coactive_rule();
    });
    coactive_rule();
    more_policies_rule = function() {
      var v_option;
      v_option = document.getElementById("more_policies").value;
      if (v_option === "Si") {
        document.getElementById("policies").readOnly = false;
        document.getElementById("sinisters").readOnly = false;
      }
      if (v_option === "No") {
        document.getElementById("policies").readOnly = true;
        return document.getElementById("sinisters").readOnly = true;
      }
    };
    $('#more_policies').change(function() {
      return more_policies_rule();
    });
    more_policies_rule();
    join_committee_rule = function() {
      var v_option;
      v_option = document.getElementById("join_committee").value;
      if (v_option === "2") {
        document.getElementById("committee_date").readOnly = false;
        return $('#committee').prop("disabled", false);
      } else {
        document.getElementById("committee_date").readOnly = true;
        return $('#committee').prop("disabled", true);
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
        document.getElementById("reason_inv").readOnly = true;
        document.getElementById("fail_value").readOnly = true;
        document.getElementById("fail_previ").readOnly = true;
        return document.getElementById("payed_value").readOnly = true;
      } else if (v_option === "3") {
        document.getElementById("reconcilie_value").readOnly = true;
        document.getElementById("auth_value").readOnly = true;
        document.getElementById("reason_conc").readOnly = false;
        document.getElementById("reason_inv").readOnly = true;
        document.getElementById("fail_value").readOnly = false;
        document.getElementById("fail_previ").readOnly = false;
        return document.getElementById("payed_value").readOnly = false;
      } else if (v_option === "4") {
        document.getElementById("reconcilie_value").readOnly = true;
        document.getElementById("auth_value").readOnly = true;
        document.getElementById("reason_conc").readOnly = true;
        document.getElementById("reason_inv").readOnly = false;
        document.getElementById("fail_value").readOnly = false;
        document.getElementById("fail_previ").readOnly = false;
        return document.getElementById("payed_value").readOnly = false;
      } else {
        document.getElementById("reconcilie_value").readOnly = true;
        document.getElementById("auth_value").readOnly = true;
        document.getElementById("reason_conc").readOnly = true;
        document.getElementById("reason_inv").readOnly = true;
        document.getElementById("fail_value").readOnly = false;
        document.getElementById("fail_previ").readOnly = false;
        return document.getElementById("payed_value").readOnly = false;
      }
    };
    $('#committee').change(function() {
      return committee_rule();
    });
    committee_rule();
    reinsurance_type_rule = function() {
      var v_option;
      v_option = document.getElementById("reinsurance_type").value;
      if (v_option === "2" || v_option === "3") {
        return document.getElementById("reinsurance_value").readOnly = false;
      } else {
        return document.getElementById("reinsurance_value").readOnly = true;
      }
    };
    $("#reinsurance_type").change(function() {
      return reinsurance_type_rule();
    });
    reinsurance_type_rule();
    num = 0;
    exer = 0;
    poly = 0;
    comm = 0;
    numSiniestro = "";
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
        return $('#more_policies').prop("disabled", false);
      } else {
        document.getElementById("policyCents").readOnly = true;
        $('#protection').prop("disabled", true);
        document.getElementById("number").readOnly = true;
        document.getElementById("exercise").readOnly = true;
        $('#branch_policy').prop("disabled", true);
        $('#branch_commercial').prop("disabled", true);
        return $('#more_policies').prop("disabled", true);
      }
    };
    $('#litigationSource').change(function() {
      return litigation_source_rule();
    });
    litigation_source_rule();
    process_class_rule = function() {
      var v_option;
      v_option = document.getElementById("processClass").value;
      switch (v_option) {
        case "1":
          $('#subprocessAdmin').prop("disabled", false);
          $('#subprocessAdmin').show();
          $('#subprocessPenal').prop("disabled", true);
          $('#subprocessPenal').hide();
          $('#subprocessCivil').prop("disabled", true);
          $('#subprocessCivil').hide();
          $('#subprocessLaboral').prop("disabled", true);
          $('#subprocessLaboral').hide();
          $('#subprocessArbitral').prop("disabled", true);
          return $('#subprocessArbitral').hide();
        case "2":
          $('#subprocessAdmin').prop("disabled", true);
          $('#subprocessAdmin').hide();
          $('#subprocessPenal').prop("disabled", true);
          $('#subprocessPenal').hide();
          $('#subprocessCivil').prop("disabled", false);
          $('#subprocessCivil').show();
          $('#subprocessLaboral').prop("disabled", true);
          $('#subprocessLaboral').hide();
          $('#subprocessArbitral').prop("disabled", true);
          return $('#subprocessArbitral').hide();
        case "11":
          $('#subprocessPenal').prop("disabled", false);
          $('#subprocessPenal').show();
          $('#subprocessAdmin').prop("disabled", true);
          $('#subprocessAdmin').hide();
          $('#subprocessCivil').prop("disabled", true);
          $('#subprocessCivil').hide();
          $('#subprocessLaboral').prop("disabled", true);
          $('#subprocessLaboral').hide();
          $('#subprocessArbitral').prop("disabled", true);
          return $('#subprocessArbitral').hide();
        case "12":
          $('#subprocessPenal').prop("disabled", true);
          $('#subprocessPenal').hide();
          $('#subprocessAdmin').prop("disabled", true);
          $('#subprocessAdmin').hide();
          $('#subprocessCivil').prop("disabled", true);
          $('#subprocessCivil').hide();
          $('#subprocessLaboral').prop("disabled", false);
          $('#subprocessLaboral').show();
          $('#subprocessArbitral').prop("disabled", true);
          return $('#subprocessArbitral').hide();
        case "30":
          $('#subprocessPenal').prop("disabled", true);
          $('#subprocessPenal').hide();
          $('#subprocessAdmin').prop("disabled", true);
          $('#subprocessAdmin').hide();
          $('#subprocessCivil').prop("disabled", true);
          $('#subprocessCivil').hide();
          $('#subprocessLaboral').prop("disabled", true);
          $('#subprocessLaboral').hide();
          $('#subprocessArbitral').prop("disabled", false);
          return $('#subprocessArbitral').show();
        default:
          $('#subprocessAdmin').prop("disabled", true);
          $('#subprocessAdmin').hide();
          $('#subprocessPenal').prop("disabled", true);
          $('#subprocessPenal').hide();
          $('#subprocessCivil').prop("disabled", true);
          $('#subprocessCivil').hide();
          $('#subprocessLaboral').prop("disabled", true);
          $('#subprocessLaboral').hide();
          $('#subprocessArbitral').prop("disabled", true);
          return $('#subprocessArbitral').hide();
      }
    };
    $('#processClass').change(function() {
      return process_class_rule();
    });
    process_class_rule();
    hide_all_selectors = function() {
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
    subprocess_admin_rule = function() {
      hide_all_selectors();
      $('#judicial_admin').prop("disabled", false);
      return $('#judicial_admin').show();
    };
    $('#judicial_admin').change(function() {
      return subprocess_admin_rule();
    });
    subprocess_admin_rule();
    subprocess_civil_rule = function() {
      var v_option;
      hide_all_selectors();
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
        default:
          return hide_all_selectors();
      }
    };
    $('#subprocessCivil').change(function() {
      return subprocess_civil_rule();
    });
    subprocess_civil_rule();
    subprocess_penal_rule = function() {
      hide_all_selectors();
      $('#judicial_penal').prop("disabled", false);
      return $('#judicial_penal').show();
    };
    $('#judicial_penal').change(function() {
      return subprocess_penal_rule();
    });
    subprocess_penal_rule();
    subprocess_laboral_rule = function() {
      hide_all_selectors();
      $('#judicial_laboral').prop("disabled", false);
      return $('#judicial_laboral').show();
    };
    $('#judicial_laboral').change(function() {
      return subprocess_laboral_rule();
    });
    subprocess_laboral_rule();
    subprocess_arbitral_rule = function() {
      hide_all_selectors();
      $('#judicial_arbitral').prop("disabled", false);
      return $('#judicial_arbitral').show();
    };
    $('#judicial_arbitral').change(function() {
      return subprocess_laboral_rule();
    });
    subprocess_laboral_rule();
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
    case_state_rule = function() {
      var v_option;
      v_option = document.getElementById("caseState").value;
      if (v_option === "3") {
        $('#caseTermination').prop("disabled", false);
        $('#lastPerformance').prop("disabled", false);
        document.getElementById("lastPerformanceDate").readOnly = false;
        $('#reservedReleased').prop("disabled", false);
        return $('#recovery').prop("disabled", false);
      } else {
        $('#caseTermination').prop("disabled", true);
        $('#lastPerformance').prop("disabled", true);
        document.getElementById("lastPerformanceDate").readOnly = true;
        $('#reservedReleased').prop("disabled", true);
        return $('#recovery').prop("disabled", true);
      }
    };
    $('#caseState').change(function() {
      return case_state_rule();
    });
    case_state_rule();
    case_termination_rule = function() {
      var v_option;
      v_option = document.getElementById("caseTermination").value;
      switch (v_option) {
        case "2":
          document.getElementById("fail_value").readOnly = false;
          document.getElementById("fail_previ").readOnly = false;
          document.getElementById("payed_value").readOnly = false;
          return document.getElementById("payment_date").readOnly = false;
        case "3":
          document.getElementById("fail_value").readOnly = true;
          document.getElementById("fail_previ").readOnly = true;
          document.getElementById("payed_value").readOnly = true;
          return document.getElementById("payment_date").readOnly = true;
        default:
          document.getElementById("fail_value").readOnly = true;
          document.getElementById("fail_previ").readOnly = true;
          document.getElementById("payed_value").readOnly = true;
          return document.getElementById("payment_date").readOnly = true;
      }
    };
    $('#caseTermination').change(function() {
      return case_termination_rule();
    });
    case_termination_rule();
    coensurance_type_rule = function() {
      var v_option;
      v_option = document.getElementById("coensurance_type").value;
      if (v_option === "2" || v_option === "3") {
        return document.getElementById("coensurance_value").readOnly = false;
      } else {
        return document.getElementById("coensurance_value").readOnly = true;
      }
    };
    $('#coensurance_type').change(function() {
      return coensurance_type_rule();
    });
    coensurance_type_rule();
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
    office_rule();
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
    return cost_rule();
  });

}).call(this);
