(function() {
  $(document).on('turbolinks:load', function() {
    var case_state_rule, case_termination_rule, coactive_rule, coensurance_type_rule, comm, committee_rule, exer, join_committee_rule, litigation_source_rule, money_type_rule, more_policies_rule, num, numSiniestro, poly, process_class_rule, radicate_rule, reinsurance_type_rule, subprocess_admin_rule, subprocess_penal_rule;
    try {
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
          return $('#branch_commercial').prop("disabled", false);
        } else {
          document.getElementById("policyCents").readOnly = true;
          $('#protection').prop("disabled", true);
          document.getElementById("number").readOnly = true;
          document.getElementById("exercise").readOnly = true;
          $('#branch_policy').prop("disabled", true);
          return $('#branch_commercial').prop("disabled", true);
        }
      };
      $('#litigationSource').ready(function() {
        return litigation_source_rule();
      });
      litigation_source_rule();
      process_class_rule = function() {
        var v_option;
        v_option = document.getElementById("processClass").value;
        switch (v_option) {
          case "1":
            $('#subprocess').show();
            $('#subprocessAdminDiv').show();
            $('#subprocessAdmin').prop("disabled", false);
            $('#subprocessAdmin').show();
            $('#subprocessPenalDiv').hide();
            $('#subprocessPenal').prop("disabled", true);
            return $('#subprocessPenal').hide();
          case "11":
            $('#subprocess').show();
            $('#subprocessPenalDiv').show();
            $('#subprocessPenal').prop("disabled", false);
            $('#subprocessPenal').show();
            $('#subprocessAdminDiv').hide();
            $('#subprocessAdmin').prop("disabled", true);
            return $('#subprocessAdmin').hide();
          default:
            $('#subprocess').hide();
            $('#subprocessAdminDiv').hide();
            $('#subprocessAdmin').prop("disabled", true);
            $('#subprocessAdmin').hide();
            $('#subprocessPenalDiv').hide();
            $('#subprocessPenal').prop("disabled", true);
            return $('#subprocessPenal').hide();
        }
      };
      $('#processClass').ready(function() {
        return process_class_rule();
      });
      $('#processClass').change(function() {
        return process_class_rule();
      });
      process_class_rule();
      subprocess_admin_rule = function() {
        $('#currentStageAdmin').prop("disabled", false);
        $('#currentStageAdmin').show();
        $('#currentStagePenal').prop("disabled", true);
        return $('#currentStagePenal').hide();
      };
      $('#subprocessAdmin').change(function() {
        return subprocess_admin_rule();
      });
      subprocess_admin_rule();
      subprocess_penal_rule = function() {
        $('#currentStageAdmin').prop("disabled", true);
        $('#currentStageAdmin').hide();
        $('#currentStagePenal').prop("disabled", false);
        return $('#currentStagePenal').show();
      };
      $('#subprocessPenal').change(function() {
        return subprocess_penal_rule();
      });
      subprocess_penal_rule();
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
      return coensurance_type_rule();
    } catch (error) {
      return console.log("Judicial error");
    }
  });

}).call(this);
