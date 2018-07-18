(function() {
  $(function() {
    var case_id_bap_and_sise_rule, case_state_rule, case_termination_rule, coactive_rule, comm, departament_rule, errorMessage, exer, initial_values, litigation_source_rule, money_type_rule, more_policies_rule, num, numSiniestro, office_name_rule, poly, pretension_value_rule, protection_rule, radicate_rule, subprocess_class_rule;
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
      if ($('#passive_part').val() === "NO APLICA") {
        $('#passive_part').val("PENDIENTE");
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
      if ($('#process_radicate').val() === "NO APLICA") {
        $('#process_radicate').val("PENDIENTE");
      }
      if ($('#attorny').val() === "NO APLICA") {
        $('#attorny').val("PENDIENTE");
      }
      if ($('#more_protections').val() === "NO APLICA") {
        $('#more_protections').val("NO PRESENTA");
      }
      if ($('#active_part').val() === "NO APLICA") {
        $('#active_part').val("NO PRESENTA");
      }
      if ($('#coactive_radicate').val() === "NO APLICA") {
        $('#coactive_radicate').val("NO PRESENTA");
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
        $('#branch_policy').prop("disabled", false);
        $('#branch_policy_hid').prop("disabled", true);
        $('#branch_commercial').prop("disabled", false);
        $('#branch_commercial_hid').prop("disabled", true);
        $('#more_policies').prop("disabled", false);
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
        $('#caseTermination').prop("required", true);
        $('#caseTermination').prop("disabled", false);
        $('#caseTermination_hid').prop("disabled", true);
        $('#lastPerformance').prop("disabled", false);
        $('#lastPerformance_hid').prop("disabled", true);
        document.getElementById("lastPerformanceDate").readOnly = false;
        $('#reservedReleased').prop("disabled", false);
        $('#reservedReleased_hid').prop("disabled", true);
        $('#recovery').prop("disabled", false);
        $('#desition_date').prop("disabled", false);
        return $('#desition_date').prop("required", true);
      } else {
        $('#caseTermination').prop("required", false);
        $('#caseTermination').prop("disabled", true);
        $('#caseTermination_hid').prop("disabled", false);
        $('#lastPerformance').prop("disabled", true);
        $('#lastPerformance_hid').prop("disabled", false);
        document.getElementById("lastPerformanceDate").readOnly = true;
        $('#reservedReleased').prop("disabled", true);
        $('#reservedReleased_hid').prop("disabled", false);
        $('#recovery').prop("disabled", true);
        $('#desition_date').prop("disabled", true);
        return $('#desition_date').prop("required", false);
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
        $('#fail_value_cents').prop("disabled", false);
        $('#fail_value_cents').prop("required", true);
        $('#fail_previ_cents').prop("disabled", false);
        $('#fail_previ_cents').prop("required", true);
        $('#payed_value_cents').prop("disabled", false);
        $('#payed_value_cents').prop("required", true);
        $('#payment_date').prop("disabled", false);
        $('#payment_date').prop("required", true);
        $('#coactive').prop("disabled", false);
        $('#coactive').prop("required", true);
        $('#garnish_value_cents').prop("disabled", false);
        return $('#garnish_value_cents').prop("required", true);
      } else {
        $('#fail_value_cents').prop("disabled", true);
        $('#fail_value_cents').prop("required", false);
        $('#fail_previ_cents').prop("disabled", true);
        $('#fail_previ_cents').prop("required", false);
        $('#payed_value_cents').prop("disabled", true);
        $('#payed_value_cents').prop("required", false);
        $('#payment_date').prop("disabled", true);
        $('#payment_date').prop("required", false);
        $('#coactive').prop("disabled", true);
        $('#coactive').val("false");
        $('#coactive').prop("required", false);
        $('#garnish_value_cents').prop("disabled", true);
        return $('#garnish_value_cents').prop("required", false);
      }
    };
    $('#caseTermination').change(function() {
      return case_termination_rule();
    });
    case_termination_rule();
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
