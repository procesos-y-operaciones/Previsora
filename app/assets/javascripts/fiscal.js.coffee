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
    if $('#case_id_bap').val() == "NO APLICA"
      $('#case_id_bap').val("PENDIENTE")
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
    if $('#policies').val() == "NO APLICA"
      $('#policies').val("PENDIENTE")
    if $('#cities').val() == "000"
      $('#cities').val("")
    if $('#state_val').val() == "REGISTRO MIGRADO"
      $('#state_val').val("REGISTRO MIGRADO ACTUALIZADO")
    if $('#state_val').val() == "REGISTRO NUEVO"
      $('#state_val').val("REGISTRO NUEVO ACTUALIZADO")

  initial_values()

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

  #Fuente de litigio
  litigation_source_rule = ->
    v_option = document.getElementById('litigationSource').value
    if v_option == 'SINIESTRO'
      document.getElementById('policyCents').readOnly = false
      $('#protection').prop('disabled', false)
      document.getElementById("more_protections").readOnly = false
      $('#branch_policy').prop( "disabled", false )
      $('#branch_policy_hid').prop( "disabled", true )
      $('#branch_commercial').prop( "disabled", false )
      $('#branch_commercial_hid').prop( "disabled", true )
      $('#more_policies').prop( "disabled", false )
    else
      document.getElementById('policyCents').readOnly = true
      $('#policyCents').val("0")
      $('#protection').prop('disabled', true)
      $('#protection').val("")
      document.getElementById("more_protections").readOnly = true
      $('#exercise').val("0")
      $('#branch_policy').prop( "disabled", true )
      $('#branch_policy_hid').prop( "disabled", false )
      $('#branch_commercial').prop( "disabled", true )
      $('#branch_commercial_hid').prop( "disabled", false )
      $('#more_policies').prop( "disabled", true )

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

  #¿Tiene más pólizas?
  more_policies_rule = ->
    v_option = document.getElementById("more_policies").value
    console.log v_option
    if v_option == "true"
      document.getElementById("policies").readOnly = false
    if v_option == "false"
      document.getElementById("policies").readOnly = true
      $("#policies").val("NO PRESENTA")

  $('#more_policies').change ->
    more_policies_rule()

  more_policies_rule()

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
      $('#payed_value_cents').prop( "disabled", false )
      $('#payed_value_cents').prop( "required", true )
      $('#payment_date').prop( "disabled", false )
      $('#payment_date').prop( "required", true )
      $('#coactive').prop( "disabled", false )
      $('#coactive').prop( "required", true )
      $('#garnish_value_cents').prop( "disabled", false )
      $('#garnish_value_cents').prop( "required", true )
    else
      $('#fail_value_cents').prop( "disabled", true )
      $('#fail_value_cents').prop( "required", false )
      $('#fail_previ_cents').prop( "disabled", true )
      $('#fail_previ_cents').prop( "required", false )
      $('#payed_value_cents').prop( "disabled", true )
      $('#payed_value_cents').prop( "required", false )
      $('#payment_date').prop( "disabled", true )
      $('#payment_date').prop( "required", false )
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
    console.log "VALUE: " + value
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
