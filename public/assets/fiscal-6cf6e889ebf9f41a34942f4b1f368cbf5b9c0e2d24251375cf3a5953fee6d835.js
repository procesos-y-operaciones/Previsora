(function() {
  $(function() {
    var case_id_bap_and_sise_rule, case_state_rule, coactive_radicate_and_coactive_value_cents_rule, coactive_rule, comm, correspondency_radicate_rule, exer, initial_values, litigation_source_rule, money_type_rule, more_policies_rule, num, numSiniestro, office_name_rule, policies_and_sinisters_rule, poly, pretension_value_rule, protection_rule, radicate_rule, subprocess_class_rule;
    initial_values = function() {
      if ($('#passive_part').val() === "NO APLICA") {
        $('#passive_part').val("PENDIENTE");
      }
      if ($('#contingency_reason').val() === "NO APLICA") {
        $('#contingency_reason').val("PENDIENTE");
      }
      if ($('#facts').val() === "NO APLICA") {
        return $('#facts').val("PENDIENTE");
      }
    };
    initial_values();
    subprocess_class_rule = function() {
      var v_option;
      v_option = document.getElementById('subprocess_class').value;
      if (v_option === 'VERBAL') {
        $('#currentStageVer').prop('disabled', false);
        $('#currentStageVer').show();
        $('#currentStageOrd').prop('disabled', true);
        return $('#currentStageOrd').hide();
      } else if (v_option === 'ORDINARIO') {
        $('#currentStageVer').prop('disabled', true);
        $('#currentStageVer').hide();
        $('#currentStageOrd').prop('disabled', false);
        return $('#currentStageOrd').show();
      } else {
        $('#currentStageVer').prop('disabled', true);
        $('#currentStageVer').hide();
        $('#currentStageOrd').prop('disabled', true);
        return $('#currentStageOrd').hide();
      }
    };
    $('#subprocess_class').change(function() {
      return subprocess_class_rule();
    });
    subprocess_class_rule();
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
    numSiniestro = "";
    num = numSiniestro.concat(document.getElementById("number").value);
    exer = numSiniestro.concat(document.getElementById("exercise").value);
    poly = numSiniestro.concat(document.getElementById("branch_policy").value);
    comm = numSiniestro.concat(document.getElementById("branch_commercial").value);
    litigation_source_rule = function() {
      var v_option;
      v_option = document.getElementById('litigationSource').value;
      if (v_option === 'SINIESTRO') {
        document.getElementById('policyCents').readOnly = false;
        $('#protection').prop('disabled', false);
        document.getElementById('number').readOnly = false;
        document.getElementById('exercise').readOnly = false;
        document.getElementById("more_protections").readOnly = false;
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
        document.getElementById("more_protections").readOnly = true;
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
    protection_rule = function() {
      var v_option;
      v_option = $("#protection option:selected");
      if (v_option.size() > 0) {
        if (v_option[v_option.size() - 1].innerHTML === "OTRO") {
          return document.getElementById("more_protections").readOnly = false;
        } else {
          return document.getElementById("more_protections").readOnly = true;
        }
      } else {
        return document.getElementById("more_protections").readOnly = true;
      }
    };
    $('#protection').change(function() {
      return protection_rule();
    });
    protection_rule();
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
      if (v_option === "PESO") {
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
    pretension_value_rule = function() {
      var detValCents, ensValCents;
      detValCents = document.getElementById('detrimetValueCents').value;
      ensValCents = document.getElementById('ensuranceValueCents').value;
      if (detValCents !== 0 && ensValCents !== 0) {
        if (detValCents < ensValCents) {
          return $('#contingencyValueCents').val(detValCents);
        } else {
          return $('#contingencyValueCents').val(ensValCents);
        }
      } else {
        return $('#contingencyValueCents').val(0);
      }
    };
    $('#detrimetValueCents').change(function() {
      return pretension_value_rule();
    });
    $('#ensuranceValueCents').change(function() {
      return pretension_value_rule();
    });
    office_name_rule = function() {
      var v_option;
      v_option = document.getElementById("office_name").value;
      return $("#active_part").val(v_option);
    };
    $('#office_name').change(function() {
      return office_name_rule();
    });
    case_state_rule = function() {
      var v_option;
      v_option = document.getElementById("caseState").value;
      if (v_option === "TERMINADO") {
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
    coactive_radicate_and_coactive_value_cents_rule = function() {
      var coactiveRadicate, coactiveValueCents;
      coactiveRadicate = $('#coactive_radicate').val();
      coactiveValueCents = $('#coactive_value_cents').val();
      if (coactiveRadicate === "NO APLICA" && coactiveValueCents === "0") {
        $('#coactive').val('No');
        document.getElementById("coactive_radicate").readOnly = true;
        document.getElementById("coactive_value_cents").readOnly = true;
        return $('#coactive_radicate').val('PENDIENTE');
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
