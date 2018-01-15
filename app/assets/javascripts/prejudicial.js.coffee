$ ->
  #¿Tiene número de radicado correspondencia?
  correspondency_radicate_rule = ->
    if $('#correspondency_radicate').val() == "NO APLICA" || $('#correspondency_radicate').val() == "NO PRESENTA"
      $('#radicate').val('No')
      document.getElementById("correspondency_radicate").readOnly = true
      $("#correspondency_radicate").val("NO PRESENTA")
    else
      $('#radicate').val('Si')

  correspondency_radicate_rule()

  radicate_rule = ->
    v_option = document.getElementById("radicate").value
    if v_option == "Si"
      document.getElementById("correspondency_radicate").readOnly = false
    if v_option == "No"
      document.getElementById("correspondency_radicate").readOnly = true
      $("#correspondency_radicate").val("NO PRESENTA")

  $('#radicate').change ->
    radicate_rule()


  #Número de identificación del caso (bizagi, access y pa)
  id_bap_rule = ->
    v_option = document.getElementById("case_id_bap").value
    if v_option == "NO APLICA"
      $('#case_id_bap').val("PENDIENTE")
      v_option = document.getElementById("case_id_bap").value
    $('#process_radicate').val(v_option)

  $('#case_id_bap').change ->
    id_bap_rule()

  id_bap_rule()


  #Fuente de litigio
  num = 0
  exer = 0
  poly = 0
  comm = 0
  numSiniestro = ""
  litigation_source_rule = ->
    v_option = document.getElementById("litigationSource").value
    if v_option == "2"
      document.getElementById("policyCents").readOnly = false
      $('#protection').prop( "disabled", false )
      document.getElementById("number").readOnly = false
      document.getElementById("exercise").readOnly = false
      $('#branch_policy').prop( "disabled", false )
      $('#branch_commercial').prop( "disabled", false )
      $('#more_policies').prop( "disabled", false )
      $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm)
    else
      document.getElementById("policyCents").readOnly = true
      $('#policyCents').val("0")
      $('#protection').prop( "disabled", true )
      $('#protection').val("")
      document.getElementById("number").readOnly = true
      $('#number').val("0")
      document.getElementById("exercise").readOnly = true
      $('#exercise').val("0")
      $('#branch_policy').prop( "disabled", true )
      $('#branch_policy').val("0")
      $('#branch_commercial').prop( "disabled", true )
      $('#branch_commercial').val("0")
      $('#more_policies').prop( "disabled", true )
      $("#sinister").val("NO APLICA")

  $('#litigationSource').change ->
    litigation_source_rule()

  litigation_source_rule()

  $("#number").change ->
    num = numSiniestro.concat(document.getElementById("number").value)
    $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm)

  $('#exercise').change ->
    exer = numSiniestro.concat(document.getElementById("exercise").value)
    $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm)

  $('#branch_policy').change ->
    poly = numSiniestro.concat(document.getElementById("branch_policy").value)
    $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm)

  $('#branch_commercial').change ->
    comm = numSiniestro.concat(document.getElementById("branch_commercial").value)
    $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm)


  #¿Tiene más pólizas?
  policies_and_sinisters_rule = ->
    polici = $('#policies').val()
    sinister = $('#sinisters').val()
    if (polici == "NO APLICA" && sinister == "NO APLICA") || (polici == "PENDIENTE" && sinister == "PENDIENTE")
      $('#more_policies').val('No')
      document.getElementById("policies").readOnly = true
      document.getElementById("sinisters").readOnly = true
      $("#policies").val("PENDIENTE")
      $("#sinisters").val("PENDIENTE")
    else
      $('#more_policies').val('Si')

  policies_and_sinisters_rule()

  more_policies_rule = ->
    v_option = document.getElementById("more_policies").value
    if v_option == "Si"
      document.getElementById("policies").readOnly = false
      document.getElementById("sinisters").readOnly = false
    if v_option == "No"
      document.getElementById("policies").readOnly = true
      $("#policies").val("PENDIENTE")
      document.getElementById("sinisters").readOnly = true
      $("#sinisters").val("PENDIENTE")

  $('#more_policies').change ->
    more_policies_rule()

  #Tipo moneda
  money_type_rule = ->
    v_option = document.getElementById("moneyType").value
    if v_option == "1"
      document.getElementById("dolarValueCents").readOnly = true
      $("#dolarValueCents").val(0)
    else
      document.getElementById("dolarValueCents").readOnly = false

  $('#moneyType').change ->
    money_type_rule()

  money_type_rule()


  #Tipo de reaseguro
  reinsurance_type_rule = ->
    v_option = document.getElementById("reinsurance_type").value
    if v_option == "2" || v_option == "3"
      document.getElementById("reinsurance_value").readOnly = false
    else
      document.getElementById("reinsurance_value").readOnly = true
      $("#reinsurance_value").val(0)

  $("#reinsurance_type").change ->
    reinsurance_type_rule()

  reinsurance_type_rule()


  #Ingresa al comité
  join_committee_rule = ->
    v_option = document.getElementById("join_committee").value
    if v_option == "2"
      $('#committee').prop( "disabled", false )
    else
      $('#committee').prop( "disabled", true )

  $('#join_committee').change ->
    join_committee_rule()

  join_committee_rule()


  #Decisión del comité
  committee_rule = ->
    v_option = document.getElementById("committee").value
    switch v_option
      when "2"
        document.getElementById("auth_value").readOnly = false
        document.getElementById("payed_value").readOnly = false
        document.getElementById("payment_date").readOnly = false
        document.getElementById("reason_conc").readOnly = true
        $('#reason_conc').val("PENDIENTE")
        document.getElementById("reason_inv").readOnly = true
        $('#reason_inv').val("PENDIENTE")
      when "3"
        document.getElementById("auth_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payed_value").readOnly = true
        $('#payed_value').val("0")
        document.getElementById("payment_date").readOnly = true
        $('#payment_date').val("0")
        document.getElementById("reason_conc").readOnly = false
        document.getElementById("reason_inv").readOnly = true
        $('#reason_inv').val("PENDIENTE")
      when "4"
        document.getElementById("auth_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payed_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payment_date").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("reason_conc").readOnly = true
        $('#reason_conc').val("PENDIENTE")
        document.getElementById("reason_inv").readOnly = false
      else
        document.getElementById("auth_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payed_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payment_date").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("reason_conc").readOnly = true
        $('#reason_conc').val("PENDIENTE")
        document.getElementById("reason_inv").readOnly = true
        $('#reason_inv').val("PENDIENTE")

  $('#committee').change ->
    committee_rule()

  committee_rule()

  #Departamento donde cursa el caso
  $('#departament').change ->
    input_state = $(this)
    output_state = $('#cities')
    $.getJSON '/cities/' + $(this).val(), (data) ->
      output_state.empty()
      $.each data, (i) ->
        opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>'
        output_state.append opt
