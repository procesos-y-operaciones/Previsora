$ ->
  #Valores iniciales
  initial_values = ->
    if $('#case_id_bap').val() == "NO APLICA"
      $('#case_id_bap').val("PENDIENTE")
    if $('#process_radicate').val() == "NO APLICA"
      $('#process_radicate').val("PENDIENTE")
    if $('#case_onbase').val() == "NO APLICA"
      $('#case_onbase').val("PENDIENTE")
    if $('#attorny').val() == "NO APLICA"
      $('#attorny').val("PENDIENTE")
    if $('#active_part').val() == "NO APLICA"
      $('#active_part').val("PENDIENTE")
    if $('#passive_part').val() == "NO APLICA"
      $('#passive_part').val("PENDIENTE")
    if $('#facts').val() == "NO APLICA"
      $('#facts').val("PENDIENTE")
    if $('#more_protections').val() == "NO APLICA"
      $('#more_protections').val("NO PRESENTA")
    if $('#office_name').val() == "NO APLICA"
      $('#office_name').val("PENDIENTE")
    if $('#document_active_part').val() == "NO APLICA"
      $('#document_active_part').val("PENDIENTE")
    if $('#document_passive_part').val() == "NO APLICA"
      $('#document_passive_part').val("PENDIENTE")
    if $('#policies').val() == "NO APLICA"
      $('#policies').val("PENDIENTE")
    if $('#sinisters').val() == "NO APLICA"
      $('#sinisters').val("PENDIENTE")
    if $('#state_val').val() == "REGISTRO MIGRADO"
      $('#state_val').val("REGISTRO MIGRADO ACTUALIZADO")
    if $('#state_val').val() == "REGISTRO NUEVO"
      $('#state_val').val("REGISTRO NUEVO ACTUALIZADO")

  initial_values()

  #Patrón de todos los text_area
  errorMessage = 'Ingrese sólo mayúsculas, numeros, guiones y/o espacios.'
  $(this).find('textarea').on 'input change propertychange', ->
    pattern = $(this).attr('pattern')
    if typeof pattern != typeof undefined and pattern != false
      patternRegex = new RegExp('^' + pattern.replace(/^\^|\$$/g, '') + '$', 'g')
      hasError = !$(this).val().match(patternRegex)
      if typeof @setCustomValidity == 'function'
        @setCustomValidity if hasError then errorMessage else ''
      else
        $(this).toggleClass 'error', ! !hasError
        $(this).toggleClass 'ok', !hasError
        if hasError
          $(this).attr 'title', errorMessage
        else
          $(this).removeAttr 'title'

  #¿Tiene número de radicado correspondencia?
  radicate_rule = ->
    v_option = document.getElementById("radicate").value
    if v_option == "true"
      document.getElementById("correspondency_radicate").readOnly = false
    if v_option == "false"
      document.getElementById("correspondency_radicate").readOnly = true
      $("#correspondency_radicate").val("NO PRESENTA")

  $('#radicate').change ->
    radicate_rule()

  radicate_rule()

  #Fuente de litigio
  numSiniestro = ""
  num = numSiniestro.concat(document.getElementById("number").value)
  exer = numSiniestro.concat(document.getElementById("exercise").value)
  poly = numSiniestro.concat(document.getElementById("branch_policy").value)
  comm = numSiniestro.concat(document.getElementById("branch_commercial").value)
  litigation_source_rule = ->
    v_option = document.getElementById("litigationSource").value
    if v_option == "SINIESTRO"
      document.getElementById("policyCents").readOnly = false
      $('#protection').prop( "disabled", false )
      document.getElementById("number").readOnly = false
      document.getElementById("exercise").readOnly = false
      document.getElementById("more_protections").readOnly = false
      $('#branch_policy').prop( "disabled", false )
      $('#branch_policy_hid').prop( "disabled", true )
      $('#branch_commercial').prop( "disabled", false )
      $('#branch_commercial_hid').prop( "disabled", true )
      $('#more_policies').prop( "disabled", false )
      $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm)
      $('#coensurance_type').prop( "disabled", false )
      $('#coensurance_type_hid').prop( "disabled", true )
      $('#reinsurance_type').prop( "disabled", false )
      $('#reinsurance_type_hid').prop( "disabled", true )
    else
      document.getElementById("policyCents").readOnly = true
      $('#policyCents').val("0")
      $('#protection').prop( "disabled", true )
      $('#protection').val("")
      document.getElementById("number").readOnly = true
      $('#number').val("0")
      document.getElementById("exercise").readOnly = true
      document.getElementById("more_protections").readOnly = true
      $('#exercise').val("0")
      $('#branch_policy').prop( "disabled", true )
      $('#branch_policy_hid').prop( "disabled", false )
      $('#branch_commercial').prop( "disabled", true )
      $('#branch_commercial_hid').prop( "disabled", false )
      $('#more_policies').prop( "disabled", true )
      $("#sinister").val("NO PRESENTA")
      $('#coensurance_type').prop( "disabled", true )
      $('#coensurance_type_hid').prop( "disabled", false )
      $('#reinsurance_type').prop( "disabled", true )
      $('#reinsurance_type_hid').prop( "disabled", false )

  $('#litigationSource').change ->
    litigation_source_rule()

  litigation_source_rule()

  #Protection Rule
  protection_rule = ->
    v_option = $("#protection option:selected")
    if v_option.size() > 0
      if v_option[v_option.size() - 1].innerHTML == "OTRO"
        document.getElementById("more_protections").readOnly = false
      else
        document.getElementById("more_protections").readOnly = true
    else
      document.getElementById("more_protections").readOnly = true

  $('#protection').change ->
    protection_rule()

  protection_rule()

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
  more_policies_rule = ->
    v_option = document.getElementById("more_policies").value
    if v_option == "true"
      document.getElementById("policies").readOnly = false
      document.getElementById("sinisters").readOnly = false
    if v_option == "false"
      document.getElementById("policies").readOnly = true
      $("#policies").val("PENDIENTE")
      document.getElementById("sinisters").readOnly = true
      $("#sinisters").val("PENDIENTE")

  $('#more_policies').change ->
    more_policies_rule()

  more_policies_rule()

  #Tipo moneda
  money_type_rule = ->
    v_option = document.getElementById("moneyType").value
    if v_option == "PESOS"
      document.getElementById("dolarValueCents").readOnly = true
      $("#dolarValueCents").val(0)
    else
      document.getElementById("dolarValueCents").readOnly = false

  $('#moneyType').change ->
    money_type_rule()

  money_type_rule()


  #Ingresa al comité
  join_committee_rule = ->
    v_option = document.getElementById("join_committee").value
    if v_option == "SI"
      $('#committee').prop( "disabled", false )
      $('#committee_hid').prop( "disabled", true )
    else
      $('#committee').prop( "disabled", true )
      $('#committee_hid').prop( "disabled", false )

  $('#join_committee').change ->
    join_committee_rule()

  join_committee_rule()


  #Decisión del comité
  committee_rule = ->
    v_option = document.getElementById("committee").value
    switch v_option
      when "CONCILIA"
        document.getElementById("auth_value").readOnly = false
        document.getElementById("payed_value").readOnly = false
        document.getElementById("payment_date").readOnly = false
        document.getElementById("reason_conc").readOnly = true
        $('#reason_conc').val("NO PRESENTA")
        document.getElementById("reason_inv").readOnly = true
        $('#reason_inv').val("NO PRESENTA")
      when "NO CONCILIA"
        document.getElementById("auth_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payed_value").readOnly = true
        $('#payed_value').val("0")
        document.getElementById("payment_date").readOnly = true
        $('#payment_date').val("0")
        document.getElementById("reason_conc").readOnly = false
        document.getElementById("reason_inv").readOnly = true
        $('#reason_inv').val("NO PRESENTA")
      when "INVIABLE"
        document.getElementById("auth_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payed_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payment_date").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("reason_conc").readOnly = true
        $('#reason_conc').val("NO PRESENTA")
        document.getElementById("reason_inv").readOnly = false
      else
        document.getElementById("auth_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payed_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payment_date").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("reason_conc").readOnly = true
        $('#reason_conc').val("NO PRESENTA")
        document.getElementById("reason_inv").readOnly = true
        $('#reason_inv').val("NO PRESENTA")

  $('#committee').change ->
    committee_rule()

  committee_rule()

  #State value
  state_value = ->
    value = $('#state_val').val()
    if(value) == "REGISTRO NUEVO"
      $('#state_val').val("REGISTRO NUEVO ACTUALIZADO")
    if(value) == "REGISTRO MIGRADO"
      $('#state_val').val("REGISTRO MIGRADO ACTUALIZADO")

  state_value()

  #Departamento donde cursa el caso
  departament_rule = ->
    value = $('#cities').val()
    $.getJSON '/cities/' + $('#departament').val(), (data) ->
      $('#cities').empty()
      $('#cities').append '<option value="">SELECCIONE</option>'
      $.each data, (i) ->
        if value == data[i].code
          opt = '<option selected="selected" value="' + data[i].code + '">' + data[i].name + '</option>'
        else
          opt = '<option value="' + data[i].code + '">' + data[i].name + '</option>'
        $('#cities').append(opt)

  $('#departament').change ->
    departament_rule()

  departament_rule()
