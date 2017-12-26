# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

  #Radicate Rule
  radicate_rule = ->
    v_option = document.getElementById("radicate").value
    if v_option == "Si"
      document.getElementById("correspondency_radicate").readOnly = false
    if v_option == "No"
      document.getElementById("correspondency_radicate").readOnly = true
      $("#correspondency_radicate").val("NO PRESENTA")

  $('#state').change ->
    radicate_rule()

  radicate_rule()

  #Coactive Rule
  coactive_rule = ->
    v_option = document.getElementById("coactive").value


###
    $('#coactive').ready(function(){
      var x = document.getElementById("coactive").value;
      if(x === 'Si'){
        document.getElementById("coactive_radicate").readOnly = false;
        document.getElementById("coactive_value_cents").readOnly = false;
        $("#coactive_radicate").val("");
        $("#coactive_value_cents").val(0);
      }else{
       document.getElementById("coactive_radicate").readOnly = true;
       document.getElementById("coactive_value_cents").readOnly = true;
       $("#coactive_radicate").val("Pendiente");
       $("#coactive_value_cents").val(-1);
      }
    });
    $('#coactive').change(function(){
      var x = document.getElementById("coactive").value;
      if(x === 'Si'){
        document.getElementById("coactive_radicate").readOnly = false;
        document.getElementById("coactive_value_cents").readOnly = false;
        $("#coactive_radicate").val("");
        $("#coactive_value_cents").val(0);
      }else{
        document.getElementById("coactive_radicate").readOnly = true;
        document.getElementById("coactive_value_cents").readOnly = true;
        $("#correspondency_radicate").val("Pendiente");
        $("#coactive_value_cents").val(-1);
      }
    });

    $('#more_policies').ready(function(){
      var x = document.getElementById("more_policies").value;
      if(x === 'Si'){
        document.getElementById("policies").readOnly = false;
        document.getElementById("sinisters").readOnly = false;
        $("#policies").val("");
        $("#sinisters").val("");
      }else{
        document.getElementById("policies").readOnly = true;
        document.getElementById("sinisters").readOnly = true;
        $("#policies").val("NO APLICA");
        $("#sinisters").val("NO APLICA");
      }
    });
    $('#more_policies').change(function(){
      var x = document.getElementById("more_policies").value;
      if(x === 'Si'){
        document.getElementById("policies").readOnly = false;
        document.getElementById("sinisters").readOnly = false;
        $("#policies").val("");
        $("#sinisters").val("");
      }else{
        document.getElementById("policies").readOnly = true;
        document.getElementById("sinisters").readOnly = true;
        $("#policies").val("NO APLICA");
        $("#sinisters").val("NO APLICA");
      }
    });

    $('#join_committee').ready(function(){
        var x = document.getElementById("join_committee").value;
        if(x === "2"){
          document.getElementById("committee_date").readOnly = false;
          $('#committee').prop( "disabled", false );
        }else{
          document.getElementById("committee_date").readOnly = true;
          $('#committee').prop( "disabled", true );
        }
    });
    $('#join_committee').change(function(){
      var x = document.getElementById("join_committee").value;
      if(x === "2"){
        document.getElementById("committee_date").readOnly = false;
        $('#committee').prop( "disabled", false );
      }else{
        document.getElementById("committee_date").readOnly = true;
        $('#committee').prop( "disabled", true );
      }
    });

    $('#committee').ready(function(){
        var x = document.getElementById("committee").value;
        if(x === "2"){
          document.getElementById("reconcilie_value").readOnly = false;
          document.getElementById("auth_value").readOnly = false;
          document.getElementById("reason_conc").readOnly = true;
          document.getElementById("reason_inv").readOnly = true;

          document.getElementById("fail_value").readOnly = true;
          document.getElementById("fail_previ").readOnly = true;
          document.getElementById("payed_value").readOnly = true;
        }else if(x === "3"){
          document.getElementById("reconcilie_value").readOnly = true;
          document.getElementById("auth_value").readOnly = true;
          document.getElementById("reason_conc").readOnly = false;
          document.getElementById("reason_inv").readOnly = true;

          document.getElementById("fail_value").readOnly = false;
          document.getElementById("fail_previ").readOnly = false;
          document.getElementById("payed_value").readOnly = false;
        }else if(x === "4"){
          document.getElementById("reconcilie_value").readOnly = true;
          document.getElementById("auth_value").readOnly = true;
          document.getElementById("reason_conc").readOnly = false;
          document.getElementById("reason_inv").readOnly = false;

          document.getElementById("fail_value").readOnly = false;
          document.getElementById("fail_previ").readOnly = false;
          document.getElementById("payed_value").readOnly = false;
        }else{
          document.getElementById("reconcilie_value").readOnly = true;
          document.getElementById("auth_value").readOnly = true;
          document.getElementById("reason_conc").readOnly = true;
          document.getElementById("reason_inv").readOnly = true;

          document.getElementById("fail_value").readOnly = false;
          document.getElementById("fail_previ").readOnly = false;
          document.getElementById("payed_value").readOnly = false;
        }
    });
    $('#committee').change(function(){
      var x = document.getElementById("committee").value;
        if(x === "2"){
          document.getElementById("reconcilie_value").readOnly = false;
          document.getElementById("auth_value").readOnly = false;
          document.getElementById("reason_conc").readOnly = true;
          document.getElementById("reason_inv").readOnly = true;

          document.getElementById("fail_value").readOnly = true;
          document.getElementById("fail_previ").readOnly = true;
          document.getElementById("payed_value").readOnly = true;
        }else if(x === "3"){
          document.getElementById("reconcilie_value").readOnly = true;
          document.getElementById("auth_value").readOnly = true;
          document.getElementById("reason_conc").readOnly = false;
          document.getElementById("reason_inv").readOnly = true;

          document.getElementById("fail_value").readOnly = false;
          document.getElementById("fail_previ").readOnly = false;
          document.getElementById("payed_value").readOnly = false;
        }else if(x === "4"){
          document.getElementById("reconcilie_value").readOnly = true;
          document.getElementById("auth_value").readOnly = true;
          document.getElementById("reason_conc").readOnly = false;
          document.getElementById("reason_inv").readOnly = false;

          document.getElementById("fail_value").readOnly = false;
          document.getElementById("fail_previ").readOnly = false;
          document.getElementById("payed_value").readOnly = false;
        }else{
          document.getElementById("reconcilie_value").readOnly = true;
          document.getElementById("auth_value").readOnly = true;
          document.getElementById("reason_conc").readOnly = true;
          document.getElementById("reason_inv").readOnly = true;

          document.getElementById("fail_value").readOnly = false;
          document.getElementById("fail_previ").readOnly = false;
          document.getElementById("payed_value").readOnly = false;
        }
    });

    $('#reinsurance_type').ready(function(){
        var x = document.getElementById("reinsurance_type").value;
        if(x === "2" || x === "3"){
          document.getElementById("reinsurance_value").readOnly = false;
        }else{
          document.getElementById("reinsurance_value").readOnly = true;
        }
    });
    $('#reinsurance_type').change(function(){
      var x = document.getElementById("reinsurance_type").value;
      if(x === "2" || x === "3"){
        document.getElementById("reinsurance_value").readOnly = false;
      }else{
        document.getElementById("reinsurance_value").readOnly = true;
      }
    });

    var num=0, exer=0, poly=0, comm=0, numSiniestro = "";
    $('#number').change(function(){
      num = numSiniestro.concat(document.getElementById("number").value);
      $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm);
    });
    $('#exercise').change(function(){
      exer = numSiniestro.concat(document.getElementById("exercise").value);
      $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm);
    });
    $('#branch_policy').change(function(){
      poly = numSiniestro.concat(document.getElementById("branch_policy").value);
      $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm);
    });
    $('#branch_commercial').change(function(){
      comm = numSiniestro.concat(document.getElementById("branch_commercial").value);
      $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm);
    });

    $('#litigationSource').ready(function(){
      litigationSourceRule();
    });
    $('#litigationSource').change(function(){
      litigationSourceRule();
    });
    function litigationSourceRule(){
      litsrc = document.getElementById("litigationSource").value;
      if(litsrc === "2"){
        document.getElementById("policyCents").readOnly = false;
        $('#protection').prop( "disabled", false );
        document.getElementById("number").readOnly = false;
        document.getElementById("exercise").readOnly = false;
        $('#branch_policy').prop( "disabled", false );
        $('#branch_commercial').prop( "disabled", false );
      }else{
        document.getElementById("policyCents").readOnly = true;
        $('#protection').prop( "disabled", true );
        document.getElementById("number").readOnly = true;
        document.getElementById("exercise").readOnly = true;
        $('#branch_policy').prop( "disabled", true );
        $('#branch_commercial').prop( "disabled", true );
      }
    }

    $('#detrimetValueCents').ready(function(){
      contingencyValueCentsRule();
    });
    $('#ensuranceValueCents').ready(function(){
      contingencyValueCentsRule();
    });
    $('#detrimetValueCents').change(function(){
      contingencyValueCentsRule();
    });
    $('#ensuranceValueCents').change(function(){
      contingencyValueCentsRule();
    });

    $('#processClass').ready(function(){
      processClassRule();
    });
    $('#processClass').change(function(){
      processClassRule();
    });
    function processClassRule(){
      process_class = document.getElementById("processClass").value;
      switch(process_class) {
        case "1":
          $('#subprocessAdmin').prop( "disabled", false );
          $('#subprocessAdmin').show();
          $('#subprocessPenal').prop( "disabled", true );
          $('#subprocessPenal').hide();
          break;
        case "2":
          $('#subprocessAdmin').prop( "disabled", true );
          $('#subprocessAdmin').hide();
          $('#subprocessPenal').prop( "disabled", true );
          $('#subprocessPenal').hide();
          break;
        case "11":
          $('#subprocessPenal').prop( "disabled", false );
          $('#subprocessPenal').show();
          $('#subprocessAdmin').prop( "disabled", true );
          $('#subprocessAdmin').hide();
          break;
        default:
          $('#subprocessAdmin').prop( "disabled", true );
          $('#subprocessAdmin').hide();
          $('#subprocessPenal').prop( "disabled", true );
          $('#subprocessPenal').hide();
          break;
      }
    }

    $('#subprocessAdmin').ready(function(){
      subprocessAdmin();
    });
    $('#subprocessAdmin').change(function(){
      subprocessAdmin();
    });
    function subprocessAdmin(){
      $('#currentStageAdmin').prop( "disabled", false );
      $('#currentStageAdmin').show();
      $('#currentStagePenal').prop( "disabled", true );
      $('#currentStagePenal').hide();
    }

    $('#subprocessPenal').ready(function(){
      subprocessPenal();
    });
    $('#subprocessPenal').change(function(){
      subprocessPenal();
    });
    function subprocessPenal(){
      $('#currentStageAdmin').prop( "disabled", true );
      $('#currentStageAdmin').hide();
      $('#currentStagePenal').prop( "disabled", false );
      $('#currentStagePenal').show();
    }

    $('#moneyType').ready(function(){
      moneyTypeRule();
    });
    $('#moneyType').change(function(){
      moneyTypeRule();
    });
    function moneyTypeRule(){
      var money_type = document.getElementById("moneyType").value;
      if(money_type == 1){
        document.getElementById("dolarValueCents").readOnly = true;
        $("#dolarValueCents").val(0);
      }else{
        document.getElementById("dolarValueCents").readOnly = false;
      }
    }

    $('#caseState').ready(function(){
      caseStateRule();
    });
    $('#caseState').change(function(){
      caseStateRule();
    });
    function caseStateRule(){
      var case_state = document.getElementById("caseState").value;
      if(case_state == 3){
        $('#caseTermination').prop( "disabled", false );
        $('#lastPerformance').prop( "disabled", false );
        document.getElementById("lastPerformanceDate").readOnly = false;
        $('#reservedReleased').prop( "disabled", false );
        $('#recovery').prop( "disabled", false );
      }else{
        $('#caseTermination').prop( "disabled", true );
        $('#lastPerformance').prop( "disabled", true );
        document.getElementById("lastPerformanceDate").readOnly = true;
        $('#reservedReleased').prop( "disabled", true );
        $('#recovery').prop( "disabled", true );
      }
    }

    $('#caseTermination').ready(function(){
      caseTerminationRule();
    });
    $('#caseTermination').change(function(){
      caseTerminationRule();
    });
    function caseTerminationRule(){
      var case_state = document.getElementById("caseTermination").value;
      switch (case_state) {
        case "1":
          document.getElementById("fail_value").readOnly = false;
          document.getElementById("fail_previ").readOnly = false;
          document.getElementById("payed_value").readOnly = false;
          document.getElementById("payment_date").readOnly = false;
          break;
        case "2":
          document.getElementById("fail_value").readOnly = true;
          document.getElementById("fail_previ").readOnly = true;
          document.getElementById("payed_value").readOnly = true;
          document.getElementById("payment_date").readOnly = true;
          break;
        default:
          document.getElementById("fail_value").readOnly = true;
          document.getElementById("fail_previ").readOnly = true;
          document.getElementById("payed_value").readOnly = true;
          document.getElementById("payment_date").readOnly = true;
          break;
      }
    }

    $('#coensurance_type').ready(function(){
      coensurance_typeRule();
    });
    $('#coensurance_type').change(function(){
      coensurance_typeRule();
    });
    function coensurance_typeRule(){
      var case_state = document.getElementById("coensurance_type").value;
      if(case_state === "2" || case_state === "3"){
        document.getElementById("coensurance_value").readOnly = false;
      }else{
        document.getElementById("coensurance_value").readOnly = true;
      }
    }

  });

</script>
###
