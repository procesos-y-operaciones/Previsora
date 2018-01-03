(function() {
  $(document).on('turbolinks:load', function() {
    var comm, ensurance_value_rule, exer, has_num_radicade_rule, litigation_source_rule, money_type_rule, more_policies_rule, num, numSiniestro, poly, subprocessClass_rule;
    has_num_radicade_rule = function() {
      var hasNum;
      hasNum = document.getElementById('has_num_radicade').value;
      if (hasNum === 'Si') {
        return document.getElementById('correspondency_radicate').readOnly = false;
      } else {
        return document.getElementById('correspondency_radicate').readOnly = true;
      }
    };
    $('#has_num_radicade').change(function() {
      return has_num_radicade_rule();
    });
    has_num_radicade_rule();
    subprocessClass_rule = function() {
      var subClass;
      subClass = document.getElementById('subprocessClass').value;
      if (subClass === '6') {
        $('#departament_cund').prop('disabled', false);
        $('#departament_cund').show();
        $('#departament').prop('disabled', true);
        $('#departament').hide();
        $('#city_case_bog').prop('disabled', false);
        $('#city_case_bog').show();
        $('#city_case').prop('disabled', true);
        $('#city_case').hide();
        document.getElementById('dolarValue').readOnly = true;
        $('#office_name_col').prop('disabled', false);
        $('#office_name_col').show();
        $('#office_name').prop('disabled', true);
        return $('#office_name').hide();
      } else {
        $('#departament_cund').prop('disabled', true);
        $('#departament_cund').hide();
        $('#departament').prop('disabled', false);
        $('#departament').show();
        $('#city_case_bog').prop('disabled', true);
        $('#city_case_bog').hide();
        $('#city_case').prop('disabled', false);
        $('#city_case').show();
        document.getElementById('dolarValue').readOnly = false;
        $('#office_name_col').prop('disabled', true);
        $('#office_name_col').hide();
        $('#office_name').prop('disabled', false);
        return $('#office_name').show();
      }
    };
    $('#subprocessClass').change(function() {
      return subprocessClass_rule();
    });
    subprocessClass_rule();
    ensurance_value_rule = function() {
      var ensuranceValue, subClass;
      ensuranceValue = document.getElementById('ensuranceValue').value;
      subClass = document.getElementById('subprocessClass').value;
      if (ensuranceValue > '1000000000' && subClass === '4') {
        $('#reinsuranceTypeSF').prop('disabled', false);
        $('#reinsuranceTypeSF').show();
        $('#reinsuranceType').prop('disabled', true);
        return $('#reinsuranceType').hide();
      } else {
        $('#reinsuranceTypeSF').prop('disabled', true);
        $('#reinsuranceTypeSF').hide();
        $('#reinsuranceType').prop('disabled', false);
        return $('#reinsuranceType').show();
      }
    };
    $('#ensuranceValue').change(function() {
      return ensurance_value_rule();
    });
    ensurance_value_rule();
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
    return money_type_rule();
  });

}).call(this);
