(function() {
  $(document).on('turbolinks:load', function() {
    var case_state_rule, coactive_rule, comm, exer, litigation_source_rule, money_type_rule, more_policies_rule, num, numSiniestro, poly, pretension_value_rule, state_rule, subprocess_class_rule;
    subprocess_class_rule = function() {
      var v_option;
      v_option = document.getElementById('subprocessClass').value;
      if (v_option === '3') {
        $('#currentStageVer').prop('disabled', false);
        $('#currentStageOrd').prop('disabled', true);
        $('#currentStageVerDiv').show();
        $('#currentStageOrdDiv').hide();
      }
      if (v_option === '4') {
        $('#currentStageVer').prop('disabled', true);
        $('#currentStageOrd').prop('disabled', false);
        $('#currentStageVerDiv').hide();
        return $('#currentStageOrdDiv').show();
      }
    };
    $('#subprocessClass').change(function() {
      return subprocess_class_rule();
    });
    subprocess_class_rule();
    state_rule = function() {
      var v_option;
      v_option = document.getElementById('state').value;
      if (v_option === 'Si') {
        return document.getElementById('correspondency_radicate').readOnly = false;
      } else {
        document.getElementById('correspondency_radicate').readOnly = true;
        return $('#correspondency_radicate').val('PENDIENTE');
      }
    };
    $('#state').change(function() {
      return state_rule();
    });
    state_rule();
    litigation_source_rule = function() {
      var v_option;
      v_option = document.getElementById('litigationSource').value;
      if (v_option === '2') {
        document.getElementById('policyCents').readOnly = false;
        $('#protection').prop('disabled', false);
        document.getElementById('number').readOnly = false;
        document.getElementById('exercise').readOnly = false;
        $('#branch_policy').prop('disabled', false);
        return $('#branch_commercial').prop('disabled', false);
      } else {
        document.getElementById('policyCents').readOnly = true;
        $('#protection').prop('disabled', true);
        document.getElementById('number').readOnly = true;
        document.getElementById('exercise').readOnly = true;
        $('#branch_policy').prop('disabled', true);
        $('#branch_commercial').prop('disabled', true);
        $('#policyCents').val(0);
        $('#protection').val('0');
        $('#number').val(0);
        $('#exercise').val(0);
        $('#branch_policy').val('0');
        $('#branch_commercial').val('0');
        return $('#sinister').val('NO APLICA');
      }
    };
    $('#litigationSource').change(function() {
      return litigation_source_rule();
    });
    litigation_source_rule();
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
    pretension_value_rule();
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
    return coactive_rule();
  });


  /*
  $(document).ready ->
  
          <script>
  
            $(document).ready(function() {
  
            var caseStateRule, coactiveRule, comm, contingencyValueCentsRule, exer, litigationSourceRule, moneyTypeRule, morePoliciesRule, num, numSiniestro, poly, stateRule, subprocessClassRule;
  
            //regla -> Subclase de proceso
            subprocessClassRule = function() {
              var subClass;
              subClass = document.getElementById('subprocessClass').value;
              if (subClass === '3') {
                $('#currentStageVer').prop('disabled', false);
                $('#currentStageOrd').prop('disabled', true);
                $('#currentStageVerDiv').show();
                $('#currentStageOrdDiv').hide();
              }
              if (subClass === '4') {
                $('#currentStageVer').prop('disabled', true);
                $('#currentStageOrd').prop('disabled', false);
                $('#currentStageVerDiv').hide();
                $('#currentStageOrdDiv').show();
              }
            };
            $('#subprocessClass').ready(function() {
              subprocessClassRule();
            });
            $('#subprocessClass').change(function() {
              subprocessClassRule();
            });
  
            //regla -> tiene número de radicado de correspondencia?
            stateRule = function() {
              var x;
              x = document.getElementById('state').value;
              if (x === 'Si') {
                document.getElementById('correspondency_radicate').readOnly = false;
              } else {
                document.getElementById('correspondency_radicate').readOnly = true;
                $('#correspondency_radicate').val('PENDIENTE');
              }
            };
            $('#state').ready(function() {
              stateRule();
            });
            $('#state').change(function() {
              stateRule();
            });
  
            //regla -> fuente de litigio
            litigationSourceRule = function() {
              var litsrc;
              litsrc = document.getElementById('litigationSource').value;
              if (litsrc === '2') {
                document.getElementById('policyCents').readOnly = false;
                $('#protection').prop('disabled', false);
                document.getElementById('number').readOnly = false;
                document.getElementById('exercise').readOnly = false;
                $('#branch_policy').prop('disabled', false);
                $('#branch_commercial').prop('disabled', false);
              } else {
                document.getElementById('policyCents').readOnly = true;
                $('#protection').prop('disabled', true);
                document.getElementById('number').readOnly = true;
                document.getElementById('exercise').readOnly = true;
                $('#branch_policy').prop('disabled', true);
                $('#branch_commercial').prop('disabled', true);
                $('#policyCents').val(0);
                $('#protection').val('0');
                $('#number').val(0);
                $('#exercise').val(0);
                $('#branch_policy').val('0');
                $('#branch_commercial').val('0');
                $('#sinister').val('NO APLICA');
              }
            };
            $('#litigationSource').ready(function() {
              litigationSourceRule();
            });
            $('#litigationSource').change(function() {
              litigationSourceRule();
            });
  
            //regla -> número de siniestro
            num = 0;
            exer = 0;
            poly = 0;
            comm = 0;
            numSiniestro = '';
            $('#number').change(function() {
              num = numSiniestro.concat(document.getElementById('number').value);
              $('#sinister').val(num + '-' + exer + '-' + poly + '-' + comm);
            });
            $('#exercise').change(function() {
              exer = numSiniestro.concat(document.getElementById('exercise').value);
              $('#sinister').val(num + '-' + exer + '-' + poly + '-' + comm);
            });
            $('#branch_policy').change(function() {
              poly = numSiniestro.concat(document.getElementById('branch_policy').value);
              $('#sinister').val(num + '-' + exer + '-' + poly + '-' + comm);
            });
            $('#branch_commercial').change(function() {
              comm = numSiniestro.concat(document.getElementById('branch_commercial').value);
              $('#sinister').val(num + '-' + exer + '-' + poly + '-' + comm);
            });
  
            //regla -> Tipo moneda
            moneyTypeRule = function() {
              var money_type;
              money_type = document.getElementById('moneyType').value;
              if (money_type === '1') {
                document.getElementById('dolarValueCents').readOnly = true;
                $('#dolarValueCents').val = 0;
              } else {
                document.getElementById('dolarValueCents').readOnly = false;
              }
            };
            $('#moneyType').ready(function() {
              moneyTypeRule();
            });
            $('#moneyType').change(function() {
              moneyTypeRule();
            });
  
            //regla -> Tiene más pólizas?
            morePoliciesRule = function() {
              var x;
              x = document.getElementById('more_policies').value;
              if (x === 'Si') {
                document.getElementById('policies').readOnly = false;
                document.getElementById('sinisters').readOnly = false;
              } else {
                document.getElementById('policies').readOnly = true;
                document.getElementById('sinisters').readOnly = true;
                $('#policies').val('NO APLICA');
                $('#sinisters').val('NO APLICA');
              }
            };
            $('#more_policies').ready(function() {
              morePoliciesRule();
            });
            $('#more_policies').change(function() {
              morePoliciesRule();
            });
  
            //regla -> Valor pretensión / detrimento / estimación
            contingencyValueCentsRule = function() {
              var detValCents, ensValCents;
              detValCents = document.getElementById('detrimetValueCents').value;
              ensValCents = document.getElementById('ensuranceValueCents').value;
              if (detValCents !== 0 && ensValCents !== 0) {
                if (detValCents < ensValCents) {
                  $('#contingencyValueCents').val(detValCents);
                } else {
                  $('#contingencyValueCents').val(ensValCents);
                }
              } else {
                $('#contingencyValueCents').val(0);
              }
            };
            $('#detrimetValueCents').ready(function() {
              contingencyValueCentsRule();
            });
            $('#ensuranceValueCents').ready(function() {
              contingencyValueCentsRule();
            });
            $('#detrimetValueCents').change(function() {
              contingencyValueCentsRule();
            });
            $('#ensuranceValueCents').change(function() {
              contingencyValueCentsRule();
            });
  
            //regla -> estado del caso
            caseStateRule = function() {
              var case_state;
              case_state = document.getElementById('caseState').value;
              if (case_state === '3') {
                $('#caseTermination').prop('disabled', false);
                $('#lastPerformance').prop('disabled', false);
                document.getElementById('lastPerformanceDate').readOnly = false;
                $('#reservedReleased').prop('disabled', false);
              } else {
                $('#caseTermination').prop('disabled', true);
                $('#lastPerformance').prop('disabled', true);
                document.getElementById('lastPerformanceDate').readOnly = true;
                $('#reservedReleased').prop('disabled', true);
                $('#caseTermination').val('1');
                $('#lastPerformance').val('1');
                $('#lastPerformanceDate').val('1990-01-01');
                $('#reservedReleased').val('NO APLICA');
              }
            };
            $('#caseState').ready(function() {
              caseStateRule();
            });
            $('#caseState').change(function() {
              caseStateRule();
            });
            return;
  
            //regla -> tiene número de radicado de coactivo?
            coactiveRule = function() {
              var x;
              x = document.getElementById('coactive').value;
              if (x === 'Si') {
                document.getElementById('coactive_radicate').readOnly = false;
                document.getElementById('coactive_value_cents').readOnly = false;
              } else {
                document.getElementById('coactive_radicate').readOnly = true;
                document.getElementById('coactive_value_cents').readOnly = true;
                $('#coactive_radicate').val('Pendiente');
                $('#coactive_value_cents').val(0);
              }
            };
            $('#coactive').ready(function() {
              coactiveRule();
            });
            return $('#coactive').change(function() {
              coactiveRule();
            });
  
          });
  
          </script>
   */

}).call(this);
