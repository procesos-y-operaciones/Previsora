$ ->

  #Subclase de proceso
  subprocess_class_rule = ->
    v_option = document.getElementById('subprocess_class').value
    if v_option == '3'
      $('#currentStageVer').prop 'disabled', false
      $('#currentStageVerDiv').show()
      $('#currentStageOrd').prop 'disabled', true
      $('#currentStageOrdDiv').hide()
    else if v_option == '4'
      $('#currentStageVer').prop 'disabled', true
      $('#currentStageVerDiv').hide()
      $('#currentStageOrd').prop 'disabled', false
      $('#currentStageOrdDiv').show()
    else
      $('#currentStageVer').prop 'disabled', true
      $('#currentStageVerDiv').hide()
      $('#currentStageOrd').prop 'disabled', true
      $('#currentStageOrdDiv').hide()

  $('#subprocess_class').change ->
    subprocess_class_rule()


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

  #Número de identificación del caso (Bizagi, Acces y PA)
  #Número de identificación del caso SISE
  case_id_bap_and_sise_rule ->
    bapId = $("case_id_bap").val()
    sizeId = $("case_id_sise").val()
    if bapId == "NO APLICA"
      $("case_id_bap").val("PENDIENTE")
      document.getElementById("case_id_bap").required = true
      document.getElementById("case_id_sise").required = false
    if bapId != "" and bapId != "PENDIENTE"
      document.getElementById("case_id_bap").required = true
      document.getElementById("case_id_sise").required = false
    else
      if sizeId != "" and sizeId != "PENDIENTE"
        document.getElementById("case_id_sise").required = true
        document.getElementById("case_id_bap").required = false
      else
        document.getElementById("case_id_bap").required = true
        document.getElementById("case_id_sise").required = false

  case_id_bap_and_sise_rule()

  $('#case_id_bap').change ->
    case_id_bap_and_sise_rule()

  $('#case_id_sise').change ->
    case_id_bap_and_sise_rule()


  #Fuente de litigio
  num=0
  exer=0
  poly=0
  comm=0
  numSiniestro = ""
  litigation_source_rule = ->
    v_option = document.getElementById('litigationSource').value
    if v_option == '2'
      document.getElementById('policyCents').readOnly = false
      $('#protection').prop('disabled', false)
      document.getElementById('number').readOnly = false
      document.getElementById('exercise').readOnly = false
      $('#branch_policy').prop('disabled', false)
      $('#branch_commercial').prop('disabled', false)
      $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm)
    else
      document.getElementById('policyCents').readOnly = true
      $('#policyCents').val("0")
      $('#protection').prop('disabled', true)
      $('#protection').val("")
      document.getElementById('number').readOnly = true
      $('#number').val("0")
      document.getElementById('exercise').readOnly = true
      $('#exercise').val("0")
      $('#branch_policy').prop('disabled', true)
      $('#branch_policy').val("0")
      $('#branch_commercial').prop('disabled', true)
      $('#branch_commercial').val("0")
      $('#sinister').val 'NO APLICA'

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


  #Valor asegurado y Valor contingencia
  pretension_value_rule = ->
    detValCents = document.getElementById('detrimetValueCents').value
    ensValCents = document.getElementById('ensuranceValueCents').value
    if detValCents != 0 && ensValCents != 0
      if detValCents < ensValCents
        $('#contingencyValueCents').val detValCents
      else
        $('#contingencyValueCents').val ensValCents
    else
      $('#contingencyValueCents').val 0

  $('#detrimetValueCents').change ->
    pretension_value_rule()

  $('#ensuranceValueCents').change ->
    pretension_value_rule()


  #Nombre despacho / tipo contraloría
  office_name_rule = ->
    v_option = document.getElementById("office_name").value
    $("#active_part").val(v_option)

  $('#office_name').change ->
    office_name_rule()


  #Estado del caso
  case_state_rule = ->
    v_option = document.getElementById("caseState").value
    if v_option == "2"
      $('#caseTermination').prop( "disabled", false )
      $('#lastPerformance').prop( "disabled", false )
      document.getElementById("lastPerformanceDate").readOnly = false
      $('#reservedReleased').prop( "disabled", false )
      $('#recovery').prop( "disabled", false )
    else
      $('#caseTermination').prop( "disabled", true )
      $('#caseTermination').val("")
      $('#lastPerformance').prop( "disabled", true )
      $('#lastPerformance').val("1")
      document.getElementById("lastPerformanceDate").readOnly = true
      $('#lastPerformanceDate').val("0-0-0")
      $('#reservedReleased').prop( "disabled", true )
      $('#reservedReleased').val("1")
      $('#recovery').prop( "disabled", true )
      $('#recovery').val("")

  $('#caseState').change ->
    case_state_rule()

  case_state_rule()


  #¿Tiene número de radicado de coactivo?
  coactive_radicate_and_coactive_value_cents_rule = ->
    coactiveRadicate = $('#coactive_radicate').val()
    coactiveValueCents = $('#coactive_value_cents').val()
    if (coactiveRadicate == "NO APLICA" && coactiveValueCents == "0")
      $('#coactive').val('No')
      document.getElementById("coactive_radicate").readOnly = true
      document.getElementById("coactive_value_cents").readOnly = true
    else
      $('#coactive').val('Si')

  coactive_radicate_and_coactive_value_cents_rule()

  coactive_rule = ->
    v_option = document.getElementById("coactive").value
    if v_option == "Si"
      document.getElementById("coactive_radicate").readOnly = false
      document.getElementById("coactive_value_cents").readOnly = false
    if v_option == "No"
      document.getElementById("coactive_radicate").readOnly = true
      $("#coactive_radicate").val("NO APLICA")
      document.getElementById("coactive_value_cents").readOnly = true
      $("#coactive_value_cents").val("0")

  $('#coactive').change ->
    coactive_rule()

  
  #Departamento donde cursa el caso
  $('#departament').change ->
    input_state = $(this)
    output_state = $('#cities')
    $.getJSON '/cities/' + $(this).val(), (data) ->
      output_state.empty()
      $.each data, (i) ->
        opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>'
        output_state.append opt
