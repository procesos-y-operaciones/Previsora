(function() {
  $(function() {
    var comm, committee_rule, correspondency_radicate_rule, exer, id_bap_rule, initial_values, join_committee_rule, litigation_source_rule, money_type_rule, more_policies_rule, num, numSiniestro, policies_and_sinisters_rule, poly, radicate_rule, reinsurance_type_rule;
    initial_values = function() {
      if ($('#case_onbase').val() === "NO APLICA") {
        $('#case_onbase').val("PENDIENTE");
      }
      if ($('#attorny').val() === "NO APLICA") {
        $('#attorny').val("PENDIENTE");
      }
      if ($('#active_part').val() === "NO APLICA") {
        $('#active_part').val("PENDIENTE");
      }
      if ($('#passive_part').val() === "NO APLICA") {
        $('#passive_part').val("PENDIENTE");
      }
      if ($('#facts').val() === "NO APLICA") {
        return $('#facts').val("PENDIENTE");
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
    id_bap_rule = function() {
      var v_option;
      v_option = document.getElementById("case_id_bap").value;
      if (v_option === "NO APLICA") {
        $('#case_id_bap').val("PENDIENTE");
        v_option = document.getElementById("case_id_bap").value;
      }
      return $('#process_radicate').val(v_option);
    };
    $('#case_id_bap').change(function() {
      return id_bap_rule();
    });
    id_bap_rule();
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
        return $("#sinister").val("NO APLICA");
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
    join_committee_rule = function() {
      var v_option;
      v_option = document.getElementById("join_committee").value;
      if (v_option === "2") {
        return $('#committee').prop("disabled", false);
      } else {
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
      switch (v_option) {
        case "2":
          document.getElementById("auth_value").readOnly = false;
          document.getElementById("payed_value").readOnly = false;
          document.getElementById("payment_date").readOnly = false;
          document.getElementById("reason_conc").readOnly = true;
          $('#reason_conc').val("PENDIENTE");
          document.getElementById("reason_inv").readOnly = true;
          return $('#reason_inv').val("PENDIENTE");
        case "3":
          document.getElementById("auth_value").readOnly = true;
          $('#auth_value').val("0");
          document.getElementById("payed_value").readOnly = true;
          $('#payed_value').val("0");
          document.getElementById("payment_date").readOnly = true;
          $('#payment_date').val("0");
          document.getElementById("reason_conc").readOnly = false;
          document.getElementById("reason_inv").readOnly = true;
          return $('#reason_inv').val("PENDIENTE");
        case "4":
          document.getElementById("auth_value").readOnly = true;
          $('#auth_value').val("0");
          document.getElementById("payed_value").readOnly = true;
          $('#auth_value').val("0");
          document.getElementById("payment_date").readOnly = true;
          $('#auth_value').val("0");
          document.getElementById("reason_conc").readOnly = true;
          $('#reason_conc').val("PENDIENTE");
          return document.getElementById("reason_inv").readOnly = false;
        default:
          document.getElementById("auth_value").readOnly = true;
          $('#auth_value').val("0");
          document.getElementById("payed_value").readOnly = true;
          $('#auth_value').val("0");
          document.getElementById("payment_date").readOnly = true;
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
