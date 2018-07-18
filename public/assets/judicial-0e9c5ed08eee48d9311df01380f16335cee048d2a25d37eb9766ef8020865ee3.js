(function() {
  $(function() {
    var case_id_bap_and_sise_rule, case_state_rule, case_termination_rule, coactive_rule, coensurance_type_rule, comm, committee_date_rule, committee_rule, cost_rule, current_stage_rule, departament_rule, errorMessage, exer, hide_all_stages, hide_all_subprocess, initial_values, join_committee_rule, litigation_source_rule, money_type_rule, more_policies_rule, num, numSiniestro, office_rule, poly, pretension_value_rule, process_class_rule, protection_rule, provision_cents_rule, radicate_rule, reconcilie_value_rule, reinsurance_type_rule, subprocess_civil_rule;
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
      if ($('#case_id_ekogui').val() === "NO APLICA") {
        $('#case_id_ekogui').val("PENDIENTE");
      }
      if ($('#process_radicate').val() === "NO APLICA") {
        $('#process_radicate').val("PENDIENTE");
      }
      if ($('#contingency_reason').val() === "NO APLICA") {
        $('#contingency_reason').val("PENDIENTE");
      }
      if ($('#contingency_resume').val() === "NO APLICA") {
        $('#contingency_resume').val("PENDIENTE");
      }
      if ($('#facts').val() === "NO APLICA") {
        $('#facts').val("PENDIENTE");
      }
      if ($('#active_part').val() === "NO APLICA") {
        $('#active_part').val("PENDIENTE");
      }
      if ($('#passive_part').val() === "NO APLICA") {
        $('#passive_part').val("PENDIENTE");
      }
      if ($('#attorny').val() === "NO APLICA") {
        $('#attorny').val("PENDIENTE");
      }
      if ($('#more_protections').val() === "NO APLICA") {
        $('#more_protections').val("NO PRESENTA");
      }
      if ($('#coactive_radicate').val() === "NO APLICA") {
        $('#coactive_radicate').val("PENDIENTE");
      }
      if ($('#office_text').val() === "NO APLICA") {
        $('#office_text').val("PENDIENTE");
      }
      if ($('#document_active_part').val() === "NO APLICA") {
        $('#document_active_part').val("PENDIENTE");
      }
      if ($('#document_passive_part').val() === "NO APLICA") {
        $('#document_passive_part').val("PENDIENTE");
      }
      if ($('#policies').val() === "NO APLICA") {
        $('#policies').val("PENDIENTE");
      }
      if ($('#sinisters').val() === "NO APLICA") {
        return $('#sinisters').val("PENDIENTE");
      }
    };
    initial_values();
    hide_all_subprocess = function() {
      $('#subprocessAdminDiv').hide();
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
      $('#currentStageDiv').hide();
      $('#judicial_admin').hide();
      $('#judicial_penal').prop('disabled', true);
      $('#judicial_admin').prop('disabled', true);
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
        case "JURISDICCION CONTENCIOSO ADMINISTRATIVO":
          $('#subprocessAdminDiv').show();
          $('#subprocessAdmin').prop("disabled", false);
          return $('#subprocessAdmin').show();
        case "JURISDICCION CIVIL":
          $('#subprocessAdminDiv').show();
          $('#subprocessCivil').prop("disabled", false);
          return $('#subprocessCivil').show();
        case "JURISDICCION PENAL":
          $('#subprocessAdminDiv').show();
          $('#subprocessPenal').prop("disabled", false);
          return $('#subprocessPenal').show();
        case "JURISDICCION LABORAL":
          $('#subprocessAdminDiv').show();
          $('#subprocessLaboral').prop("disabled", false);
          return $('#subprocessLaboral').show();
        case "PROCESO ARBITRAL":
          $('#subprocessAdminDiv').show();
          $('#subprocessArbitral').prop("disabled", false);
          return $('#subprocessArbitral').show();
      }
    };
    current_stage_rule = function() {
      var v_option;
      hide_all_stages();
      v_option = document.getElementById("processClass").value;
      switch (v_option) {
        case "JURISDICCION CONTENCIOSO ADMINISTRATIVO":
          $('#currentStageDiv').show();
          $('#judicial_admin').prop('disabled', false);
          return $('#judicial_admin').show();
        case "JURISDICCION PENAL":
          $('#currentStageDiv').show();
          $('#judicial_penal').prop("disabled", false);
          return $('#judicial_penal').show();
        case "JURISDICCION LABORAL":
          $('#currentStageDiv').show();
          $('#judicial_laboral').show();
          return $('#judicial_laboral').prop("disabled", false);
        case "PROCESO ARBITRAL":
          $('#currentStageDiv').show();
          $('#judicial_arbitral').prop("disabled", false);
          return $('#judicial_arbitral').show();
        case "JURISDICCION CIVIL":
          return subprocess_civil_rule();
      }
    };
    $('#processClass').change(function() {
      process_class_rule();
      return current_stage_rule();
    });
    subprocess_civil_rule = function() {
      var v_option;
      hide_all_stages();
      v_option = document.getElementById("subprocessCivil").value;
      switch (v_option) {
        case "NULIDAD DE LAS CARTAS DE NATURALEZA Y DE LAS RESOLUCIONES DE AUTORIZACION DE INSCRIPCION":
          $('#currentStageDiv').show();
          $('#judicial_verbal').prop("disabled", false);
          return $('#judicial_verbal').show();
        case "CONTROL POR VIA DE EXCEPCION":
          $('#currentStageDiv').show();
          $('#judicial_verbal_sum').prop("disabled", false);
          return $('#judicial_verbal_sum').show();
        case "PROCESO VERBAL":
          $('#currentStageDiv').show();
          $('#judicial_declarativos').prop("disabled", false);
          return $('#judicial_declarativos').show();
        case "PROCESO DE LIQUIDACION DE SOCIEDADES CONYUGALES O PATRIMONIALES POR CAUSA DISTINTA DE LA MUERTE DE LOS CONYUGES O COMPANEROS PERMANENTES":
          $('#currentStageDiv').show();
          $('#judicial_declarativos').prop("disabled", false);
          return $('#judicial_declarativos').show();
        case "PROCESO VERBAL SUMARIO":
          $('#currentStageDiv').show();
          $('#judicial_ejecutivo').prop("disabled", false);
          return $('#judicial_ejecutivo').show();
        case "PROCESOS DECLARATIVOS ESPECIALES":
          $('#currentStageDiv').show();
          $('#judicial_sucesion').show();
          return $('#judicial_sucesion').prop("disabled", false);
        case "PROCESO EJECUTIVO":
          $('#currentStageDiv').show();
          $('#judicial_liquidacion').prop("disabled", false);
          return $('#judicial_liquidacion').show();
        case "PROCESO DE SUCESION":
          $('#currentStageDiv').show();
          $('#judicial_liquidacion').prop("disabled", false);
          return $('#judicial_liquidacion').show();
        case "PROCESO DE LIQUIDACION DE SOCIEDADES CONYUGALES O PATRIMONIALES POR CAUSA DISTINTA DE LA MUERTE DE LOS CONYUGES O COMPAÑEROS PERMANENTES":
          $('#currentStageDiv').show();
          $('#judicial_insolvencia').show();
          return $('#judicial_insolvencia').prop("disabled", false);
        case "DISOLUCION, NULIDAD Y LIQUIDACION DE SOCIEDADES":
          $('#currentStageDiv').show();
          $('#judicial_ordinario').prop("disabled", false);
          return $('#judicial_ordinario').show();
        case "INSOLVENCIA DE LA PERSONA NATURAL NO COMERCIANTE":
          $('#currentStageDiv').show();
          $('#judicial_divisorio').prop("disabled", false);
          return $('#judicial_divisorio').show();
        case "PROCESO ORDINARIO":
          $('#currentStageDiv').show();
          $('#judicial_voluntaria').prop("disabled", false);
          return $('#judicial_voluntaria').show();
      }
    };
    $('#subprocessCivil').change(function() {
      return subprocess_civil_rule();
    });
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
      if (v_option === "FACULTATIVO" || v_option === "CUOTA PARTE") {
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
      if (v_option === "CEDIDO" || v_option === "ACEPTADO") {
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
    numSiniestro = "";
    num = numSiniestro.concat(document.getElementById("number").value);
    exer = numSiniestro.concat(document.getElementById("exercise").value);
    poly = numSiniestro.concat(document.getElementById("branch_policy").value);
    comm = numSiniestro.concat(document.getElementById("branch_commercial").value);
    litigation_source_rule = function() {
      var v_option;
      v_option = document.getElementById("litigationSource").value;
      if (v_option === "SINIESTRO") {
        document.getElementById("policyCents").readOnly = false;
        $('#protection').prop("disabled", false);
        document.getElementById("number").readOnly = false;
        document.getElementById("exercise").readOnly = false;
        document.getElementById("more_protections").readOnly = false;
        $('#branch_policy').prop("disabled", false);
        $('#branch_policy_hid').prop("disabled", true);
        $('#branch_commercial').prop("disabled", false);
        $('#branch_commercial_hid').prop("disabled", true);
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
        document.getElementById("more_protections").readOnly = true;
        $('#exercise').val("0");
        $('#branch_policy').prop("disabled", true);
        $('#branch_policy_hid').prop("disabled", false);
        $('#branch_commercial').prop("disabled", true);
        $('#branch_commercial_hid').prop("disabled", false);
        $('#more_policies').prop("disabled", true);
        return $("#sinister").val("NO PRESENTA");
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
    more_policies_rule = function() {
      var v_option;
      v_option = document.getElementById("more_policies").value;
      if (v_option === "true") {
        document.getElementById("policies").readOnly = false;
        document.getElementById("sinisters").readOnly = false;
      }
      if (v_option === "false") {
        document.getElementById("policies").readOnly = true;
        $("#policies").val("PENDIENTE");
        document.getElementById("sinisters").readOnly = true;
        return $("#sinisters").val("PENDIENTE");
      }
    };
    $('#more_policies').change(function() {
      return more_policies_rule();
    });
    more_policies_rule();
    money_type_rule = function() {
      var v_option;
      v_option = document.getElementById("moneyType").value;
      if (v_option === "PESOS") {
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
      if (v_option === "TERMINADO") {
        $('#caseTermination').prop("required", true);
        $('#caseTermination').prop("disabled", false);
        $('#caseTermination_hid').prop("disabled", true);
        $('#lastPerformance').prop("required", true);
        $('#lastPerformance').prop("disabled", false);
        $('#lastPerformance_hid').prop("disabled", true);
        document.getElementById("lastPerformanceDate").readOnly = false;
        $('#reservedReleased').prop("disabled", false);
        $('#reservedReleased_hid').prop("disabled", true);
        $('#recovery').prop("disabled", false);
        $('#desition_date').prop("disabled", false);
        $('#desition_date').prop("required", true);
        $('#cost').prop("required", true);
        $('#cost').prop("disabled", false);
        $('#cost_value').prop("required", true);
        return $('#cost_value').prop("disabled", false);
      } else {
        $('#caseTermination').prop("required", false);
        $('#caseTermination').val("PENDIENTE");
        $('#caseTermination').prop("disabled", true);
        $('#caseTermination_hid').prop("disabled", false);
        $('#lastPerformance').prop("required", false);
        $('#lastPerformance').val("PENDIENTE");
        $('#lastPerformance').prop("disabled", true);
        $('#lastPerformance_hid').prop("disabled", false);
        document.getElementById("lastPerformanceDate").readOnly = true;
        $('#lastPerformanceDate').val("0-0-0");
        $('#reservedReleased').val("PENDIENTE");
        $('#reservedReleased').prop("disabled", true);
        $('#reservedReleased_hid').prop("disabled", false);
        $('#recovery').prop("disabled", true);
        $('#desition_date').prop("disabled", true);
        $('#desition_date').prop("required", false);
        $('#cost').prop("required", false);
        $('#cost').prop("disabled", true);
        $('#cost').val("false");
        $('#cost_value').prop("required", false);
        return $('#cost_value').prop("disabled", true);
      }
    };
    $('#caseState').change(function() {
      return case_state_rule();
    });
    case_state_rule();
    case_termination_rule = function() {
      var v_option;
      v_option = document.getElementById("caseTermination").value;
      if (v_option === "TERMINADO CON PAGO: EN CONTRA") {
        document.getElementById("fail_value").readOnly = false;
        $('#fail_value').prop('required', true);
        document.getElementById("fail_previ").readOnly = false;
        $('#fail_previ').prop('required', true);
        document.getElementById("payed_value").readOnly = false;
        $('#payed_value').prop('required', true);
        document.getElementById("payment_date").readOnly = false;
        return $('#payment_date').prop('required', true);
      } else {
        document.getElementById("fail_value").readOnly = true;
        $('#fail_value').prop('required', false);
        document.getElementById("fail_previ").readOnly = true;
        $('#fail_previ').prop('required', false);
        document.getElementById("payed_value").readOnly = true;
        $('#payed_value').prop('required', false);
        document.getElementById("payment_date").readOnly = true;
        return $('#payment_date').prop('required', false);
      }
    };
    $('#caseTermination').change(function() {
      return case_termination_rule();
    });
    case_termination_rule();
    cost_rule = function() {
      var v_option;
      v_option = document.getElementById('cost').value;
      if (v_option === "true") {
        return document.getElementById("cost_value").readOnly = false;
      } else {
        return document.getElementById("cost_value").readOnly = true;
      }
    };
    $('#cost').change(function() {
      return cost_rule();
    });
    cost_rule();
    coactive_rule = function() {
      var v_option;
      v_option = document.getElementById("coactive").value;
      if (v_option === "true") {
        document.getElementById("coactive_radicate").readOnly = false;
        document.getElementById("coactive_value_cents").readOnly = false;
      }
      if (v_option === "false") {
        document.getElementById("coactive_radicate").readOnly = true;
        $("#coactive_radicate").val("NO PRESENTA");
        document.getElementById("coactive_value_cents").readOnly = true;
        return $("#coactive_value_cents").val("0");
      }
    };
    $('#coactive').change(function() {
      return coactive_rule();
    });
    coactive_rule();
    join_committee_rule = function() {
      var v_option;
      v_option = document.getElementById("join_committee").value;
      if (v_option === "SI") {
        document.getElementById("committee_date").readOnly = false;
        $('#committee').prop("disabled", false);
        return $('#committee_hid').prop("disabled", true);
      } else {
        document.getElementById("committee_date").readOnly = true;
        $('#committee_date').val("0-0-0");
        $('#committee').prop("disabled", true);
        return $('#committee_hid').prop("disabled", false);
      }
    };
    $('#join_committee').change(function() {
      return join_committee_rule();
    });
    join_committee_rule();
    committee_date_rule = function() {
      var a, v_option;
      v_option = document.getElementById("committee_date").value;
      a = new Date(v_option);
      if (a.getTime() > (new Date).getTime()) {
        return $('#committee').val("PENDIENTE");
      } else {
        return $('#committee').val("");
      }
    };
    $('#committee_date').change(function() {
      return committee_date_rule();
    });
    committee_date_rule();
    committee_rule = function() {
      var v_option;
      v_option = document.getElementById("committee").value;
      if (v_option === "CONCILIA") {
        document.getElementById("reconcilie_value").readOnly = false;
        document.getElementById("auth_value").readOnly = false;
        document.getElementById("reason_conc").readOnly = true;
        $('#reason_conc').val("PENDIENTE");
        document.getElementById("reason_inv").readOnly = true;
        return $('#reason_inv').val("PENDIENTE");
      } else if (v_option === "NO CONCILIA") {
        document.getElementById("reconcilie_value").readOnly = true;
        $('#reconcilie_value').val("0");
        document.getElementById("auth_value").readOnly = true;
        $('#auth_value').val("0");
        document.getElementById("reason_conc").readOnly = false;
        document.getElementById("reason_inv").readOnly = true;
        return $('#reason_inv').val("PENDIENTE");
      } else if (v_option === "INVIABLE") {
        document.getElementById("reconcilie_value").readOnly = true;
        $('#reconcilie_value').val("0");
        document.getElementById("auth_value").readOnly = true;
        $('#auth_value').val("0");
        document.getElementById("reason_conc").readOnly = true;
        $('#reason_conc').val("PENDIENTE");
        return document.getElementById("reason_inv").readOnly = false;
      } else {
        document.getElementById("reconcilie_value").readOnly = true;
        $('#reconcilie_value').val("0");
        document.getElementById("auth_value").readOnly = true;
        $('#auth_value').val("0");
        document.getElementById("reason_conc").readOnly = true;
        $('#reason_conc').val("PENDIENTE");
        document.getElementById("reason_inv").readOnly = true;
        return $('#reason_inv').val("PENDIENTE");
      }
    };
    $('#committee').change(function() {
      return committee_rule();
    });
    committee_rule();
    process_class_rule();
    current_stage_rule();
    provision_cents_rule = function() {
      var v_option;
      v_option = document.getElementById("provision_cents").value;
      v_option = v_option.split("'").join("");
      v_option = v_option.split(",").join("");
      if (v_option > '0') {
        return document.getElementById("reserved_fees_cents").readOnly = false;
      } else {
        return document.getElementById("reserved_fees_cents").readOnly = true;
      }
    };
    $('#provision_cents').change(function() {
      return provision_cents_rule();
    });
    provision_cents_rule();
    pretension_value_rule = function() {
      var detValCents, ensValCents;
      detValCents = document.getElementById('detrimetValueCents').value;
      detValCents = detValCents.split("'").join("");
      detValCents = detValCents.split(",").join("");
      ensValCents = document.getElementById('ensuranceValueCents').value;
      ensValCents = ensValCents.split("'").join("");
      ensValCents = ensValCents.split(",").join("");
      if (detValCents !== 0 && ensValCents !== 0) {
        if (parseInt(detValCents) < parseInt(ensValCents)) {
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
    reconcilie_value_rule = function() {
      var authValue, ensuranceValue;
      ensuranceValue = $('#reconcilie_value').val();
      ensuranceValue = ensuranceValue.split("'").join("");
      ensuranceValue = ensuranceValue.split(",").join("");
      authValue = $('#auth_value').val();
      authValue = authValue.split("'").join("");
      authValue = authValue.split(",").join("");
      if (ensuranceValue > authValue) {
        return $('#reconcilie_value').val(authValue);
      }
    };
    $('#reconcilie_value').change(function() {
      return reconcilie_value_rule();
    });
    reconcilie_value_rule();
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
