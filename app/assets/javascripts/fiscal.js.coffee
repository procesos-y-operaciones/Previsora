$ ->
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

  #Valores iniciales
  initial_values = ->
    if $('#passive_part').val() == "NO APLICA"
      $('#passive_part').val("PENDIENTE")
    if $('#contingency_reason').val() == "NO APLICA"
      $('#contingency_reason').val("PENDIENTE")
    if $('#contingency_resume').val() == "NO APLICA"
      $('#contingency_resume').val("PENDIENTE")
    if $('#facts').val() == "NO APLICA"
      $('#facts').val("PENDIENTE")
    if $('#process_radicate').val() == "NO APLICA"
      $('#process_radicate').val("PENDIENTE")
    if $('#attorny').val() == "NO APLICA"
      $('#attorny').val("PENDIENTE")
    if $('#more_protections').val() == "NO APLICA"
      $('#more_protections').val("NO PRESENTA")
    if $('#active_part').val() == "NO APLICA"
      $('#active_part').val("NO PRESENTA")
    if $('#coactive_radicate').val() == "NO APLICA"
      $('#coactive_radicate').val("NO PRESENTA")
    if $('#document_active_part').val() == "NO APLICA"
      $('#document_active_part').val("PENDIENTE")
    if $('#document_passive_part').val() == "NO APLICA"
      $('#document_passive_part').val("PENDIENTE")
    if $('#departament').val() == "00"
      $('#departament').val("")
    if $('#cities').val() == "000"
      $('#cities').val("")

  initial_values()

  #Summ reserve_cents
  reserve_cents_sum = ->
    sum = 0
    $.map $(".reserve_cents"), ( i ) ->
      sum += Number(i.value.split("'").join("").split(",").join(""))
    $('#provision_cents').val( sum )

  #Summ reserved_fees_cents
  reserved_fees_cents_sum = ->
    sum = 0
    $.map $(".reserved_fees_cents"), ( i ) ->
      sum += Number(i.value.split("'").join("").split(",").join(""))
    $('#reserved_fees_cents').val( sum )

  #Summ ensurance_value_cents
  ensurance_value_cents_sum = ->
    sum = 0
    $.map $(".ensurance_value"), ( i ) ->
      sum += Number(i.value.split("'").join("").split(",").join(""))
    $('#ensurance_value_cents').val( sum )

  #Initialize functions for each sinister
  $.map $('#sinisters_container')[0].childNodes, ( i ) ->
    if i.className == "nested-fields"
      num = i.childNodes[5].childNodes[1]
      eje = i.childNodes[9].childNodes[1]
      sp = i.childNodes[13].childNodes[1]
      ra = i.childNodes[17].childNodes[1]
      sg = i.childNodes[21].childNodes[1]
      ri = i.childNodes[25].childNodes[1]
      rh = i.childNodes[29].childNodes[1]

      aux = ->
        sg.value = num.value + "-" + eje.value + "-" + sp.value + "-" + ra.value

      num.onchange = aux
      eje.onchange = aux
      sp.onchange = aux
      ra.onchange = aux
      ri.onchange = reserve_cents_sum
      rh.onchange = reserved_fees_cents_sum

  #Siniestros
  $('#sinisters_container').on('cocoon:after-insert', (e, i) ->
    num = i[0].childNodes[5].childNodes[1]
    eje = i[0].childNodes[9].childNodes[1]
    sp = i[0].childNodes[13].childNodes[1]
    ra = i[0].childNodes[17].childNodes[1]
    sg = i[0].childNodes[21].childNodes[1]
    ri = i[0].childNodes[25].childNodes[1]
    rh = i[0].childNodes[29].childNodes[1]

    aux = ->
      sg.value = num.value + "-" + eje.value + "-" + sp.value + "-" + ra.value

    num.onchange = aux
    eje.onchange = aux
    sp.onchange = aux
    ra.onchange = aux
    ri.onchange = reserve_cents_sum
    rh.onchange = reserved_fees_cents_sum
  )
  $('#sinisters_container').on('cocoon:after-remove', (e, i) ->
    $('#provision_cents').val( $('#provision_cents').val() -  i[0].childNodes[25].childNodes[1].value.split("'").join("").split(",").join("") )
    $('#reserved_fees_cents').val( $('#reserved_fees_cents').val() - i[0].childNodes[29].childNodes[1].value.split("'").join("").split(",").join("") )
  )

  #Initialize functions for each policy
  $.map $('#policies_container')[0].childNodes, ( i ) ->
    if i.className == "nested-fields"
      va = i.childNodes[13].childNodes[1]
      va.onchange = ensurance_value_cents_sum

  #Polizas
  $('#policies_container').on('cocoon:after-insert', (e, i) ->
    va = i[0].childNodes[13].childNodes[1]
    va.onchange = ensurance_value_cents_sum
  )
  $('#policies_container').on('cocoon:after-remove', (e, i) ->
    ensurance_value_cents_sum()
  )

  #Subclase de proceso
  subprocess_class_rule = ->
    v_option = document.getElementById('subprocess_class').value
    if v_option == 'VERBAL'
      $('#currentStageVer').prop 'disabled', false
      $('#currentStageVer').show()
      $('#currentStageOrd').prop 'disabled', true
      $('#currentStageOrd').hide()
    else if v_option == 'ORDINARIO'
      $('#currentStageVer').prop 'disabled', true
      $('#currentStageVer').hide()
      $('#currentStageOrd').prop 'disabled', false
      $('#currentStageOrd').show()
    else
      $('#currentStageVer').prop 'disabled', true
      $('#currentStageVer').hide()
      $('#currentStageOrd').prop 'disabled', true
      $('#currentStageOrd').hide()

  $('#subprocess_class').change ->
    subprocess_class_rule()

  subprocess_class_rule()

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

  #¿Tiene número de radicado de coactivo?
  coactive_rule = ->
    v_option = document.getElementById("coactive").value
    if v_option == "true"
      document.getElementById("coactive_radicate").readOnly = false
      document.getElementById("coactive_value_cents").readOnly = false
    if v_option == "false"
      document.getElementById("coactive_radicate").readOnly = true
      $("#coactive_radicate").val("NO PRESENTA")
      document.getElementById("coactive_value_cents").readOnly = true
      $("#coactive_value_cents").val("0")

  $('#coactive').change ->
    coactive_rule()

  coactive_rule()

  #Número de identificación del caso (Bizagi, Acces y PA)
  #Número de identificación del caso SISE
  case_id_bap_and_sise_rule = ->
    bapId = $('#case_id_bap').val()
    sizeId = $('#case_id_sise').val()
    if bapId == "NO APLICA" and sizeId == "NO APLICA"
      $('#case_id_bap').val("PENDIENTE")
      $('#case_id_sise').val("PENDIENTE")
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
  litigation_source_rule = ->
    v_option = document.getElementById('litigationSource').value
    if v_option == 'SINIESTRO'
      $('#protection').prop('disabled', false)
      document.getElementById("more_protections").readOnly = false
      $('#siniesters_butt').show()
      $('#sinisters_label').show()
      $('#policies_butt').show()
      $('#policies_label').show()
      $('#provision_cents').prop( 'readOnly', true )
      $('#reserved_fees_cents').prop( 'readOnly', true )
      $('#ensurance_value_cents').prop( 'readOnly', true )
    else
      $('#protection').prop('disabled', true)
      $('#protection').val("")
      document.getElementById("more_protections").readOnly = true
      $('#more_policies').prop( "disabled", true )
      $('#siniesters_butt').hide()
      $('#sinisters_label').hide()
      $('#policies_butt').hide()
      $('#policies_label').hide()
      $('#provision_cents').prop( 'readOnly', false )
      $('#reserved_fees_cents').prop( 'readOnly', false )
      $('#ensurance_value_cents').prop( 'readOnly', false )

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


  #Valor asegurado y Valor contingencia
  pretension_value_rule = ->
    detValCents = document.getElementById('detrimetValueCents').value
    detValCents = detValCents.split("'").join("")
    detValCents = detValCents.split(",").join("")
    ensValCents = document.getElementById('ensurance_value_cents').value
    ensValCents = ensValCents.split("'").join("")
    ensValCents = ensValCents.split(",").join("")
    if detValCents != 0 && ensValCents != 0
      if detValCents < ensValCents
        $('#contingencyValueCents').val detValCents
      else
        $('#contingencyValueCents').val ensValCents
    else
      $('#contingencyValueCents').val 0

  $('#detrimetValueCents').change ->
    pretension_value_rule()

  $('#ensurance_value_cents').change ->
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
    if v_option == "TERMINADO"
      $('#caseTermination').prop( "required", true )
      $('#caseTermination').prop( "disabled", false )
      $('#caseTermination_hid').prop( "disabled", true )
      $('#lastPerformance').prop( "disabled", false )
      $('#lastPerformance_hid').prop( "disabled", true )
      document.getElementById("lastPerformanceDate").readOnly = false
      $('#reservedReleased').prop( "disabled", false )
      $('#reservedReleased_hid').prop( "disabled", true )
      $('#recovery').prop( "disabled", false )
      $('#desition_date').prop( "disabled", false )
      $('#desition_date').prop( "required", true )
    else
      $('#caseTermination').prop( "required", false )
      $('#caseTermination').prop( "disabled", true )
      $('#caseTermination_hid').prop( "disabled", false )
      $('#lastPerformance').prop( "disabled", true )
      $('#lastPerformance_hid').prop( "disabled", false )
      document.getElementById("lastPerformanceDate").readOnly = true
      $('#reservedReleased').prop( "disabled", true )
      $('#reservedReleased_hid').prop( "disabled", false )
      $('#recovery').prop( "disabled", true )
      $('#desition_date').prop( "disabled", true )
      $('#desition_date').prop( "required", false )

  $('#caseState').change ->
    case_state_rule()

  case_state_rule()

  #Terminacion del caso
  case_termination_rule = ->
    v_option = document.getElementById("caseTermination").value
    if v_option == "TERMINADO CON PAGO: EN CONTRA"
      $('#fail_value_cents').prop( "disabled", false )
      $('#fail_value_cents').prop( "required", true )
      $('#fail_previ_cents').prop( "disabled", false )
      $('#fail_previ_cents').prop( "required", true )
      $('#coactive').prop( "disabled", false )
      $('#coactive').prop( "required", true )
      $('#garnish_value_cents').prop( "disabled", false )
      $('#garnish_value_cents').prop( "required", true )
    else
      $('#fail_value_cents').prop( "disabled", true )
      $('#fail_value_cents').prop( "required", false )
      $('#fail_previ_cents').prop( "disabled", true )
      $('#fail_previ_cents').prop( "required", false )
      $('#coactive').prop( "disabled", true )
      $('#coactive').val( "false" )
      $('#coactive').prop( "required", false )
      $('#garnish_value_cents').prop( "disabled", true )
      $('#garnish_value_cents').prop( "required", false )

  $('#caseTermination').change ->
    case_termination_rule()

  case_termination_rule()


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
