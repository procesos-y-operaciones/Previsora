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
    if $('#contingency_reason').val() == "NO APLICA"
      $('#contingency_reason').val("PENDIENTE")
    if $('#case_id_bap').val() == "NO APLICA"
      $('#case_id_bap').val("PENDIENTE")
    if $('#case_id_sise').val() == "NO APLICA"
      $('#case_id_sise').val("PENDIENTE")
    if $('#attorny').val() == "NO APLICA"
      $('#attorny').val("PENDIENTE")
    if $('#policy_taker').val() == "NO APLICA"
      $('#policy_taker').val("PENDIENTE")
    if $('#contract').val() == "NO APLICA"
      $('#contract').val("PENDIENTE")
    if $('#contingency_resume').val() == "NO APLICA"
      $('#contingency_resume').val("PENDIENTE")
    if $('#process_radicate').val() == "NO APLICA"
      $('#process_radicate').val("PENDIENTE")
    if $('#coactive_radicate').val() == "NO APLICA"
      $('#coactive_radicate').val("PENDIENTE")
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

  #Departamento donde cursa el caso
  departament_rule_col = ->
    value = $('#cities').val()
    $.getJSON '/cities/' + $('#departament_coljuegos').val(), (data) ->
      $('#cities').empty()
      $.each data, (i) ->
        if value == data[i].code
          opt = '<option selected="selected" value="' + data[i].code + '">' + data[i].name + '</option>'
        else
          opt = '<option value="' + data[i].code + '">' + data[i].name + '</option>'
        $('#cities').append(opt)

  $('#departament_coljuegos').change ->
    departament_rule_col()

  departament_rule_col()

  #Subclase de proceso
  subprocessClass_rule = ->
    v_option = document.getElementById('subprocessClass').value
    if v_option == 'COLJUEGOS'
      departament_rule_col()
      $('#gubernatorial_coljuegos').prop 'disabled', false
      $('#gubernatorial_coljuegos').show()
      $('#gubernatorial_ordinarie').prop 'disabled', true
      $('#gubernatorial_ordinarie').hide()
      $('#departament_coljuegos').prop 'disabled', false
      $('#departament_coljuegos').show()
      $('#departament_coljuegos').trigger("change")
      $('#departament_ordinarie').prop 'disabled', true
      $('#departament_ordinarie').hide()
      $('#protection_coljuegos').prop 'disabled', false
      $('#protection_coljuegos').show()
      $('#protection_ordinarie').prop 'disabled', true
      $('#protection_ordinarie').hide()
      $('#moneyCents').prop 'disabled', false
      $('#moneyCents').show()
      $('#moneyType').prop 'disabled', true
      $('#moneyType').hide()
      $('#office_name_col').prop 'disabled', false
      $('#office_name_col').show()
      $('#office_name_ord').prop 'disabled', true
      $('#office_name_ord').hide()
    else
      departament_rule()
      $('#gubernatorial_coljuegos').prop 'disabled', true
      $('#gubernatorial_coljuegos').hide()
      $('#gubernatorial_ordinarie').prop 'disabled', true
      $('#gubernatorial_ordinarie').show()
      $('#departament_coljuegos').prop 'disabled', true
      $('#departament_coljuegos').hide()
      $('#departament_ordinarie').prop 'disabled', false
      $('#departament_ordinarie').show()
      $('#protection_coljuegos').prop 'disabled', false
      $('#protection_coljuegos').show()
      $('#protection_ordinarie').prop 'disabled', true
      $('#protection_ordinarie').hide()
      $('#moneyCents').prop 'disabled', true
      $('#moneyCents').hide()
      $('#moneyType').prop 'disabled', false
      $('#moneyType').show()
      $('#office_name_col').prop 'disabled', true
      $('#office_name_col').hide()
      $('#office_name_ord').prop 'disabled', false
      $('#office_name_ord').show()
      $('#protection_coljuegos').prop 'disabled', true
      $('#protection_coljuegos').hide()
      $('#protection_ordinarie').prop 'disabled', false
      $('#protection_ordinarie').show()

  $('#subprocessClass').change ->
    subprocessClass_rule()

  subprocessClass_rule()

  #Fuente de litigio
  litigation_source_rule = ->
    v_option = document.getElementById('litigationSource').value
    if v_option == 'SINIESTRO'
      $('#protection_coljuegos').prop('disabled', false)
      $('#protection_ordinarie').prop('disabled', false)
      $('#siniesters_butt').show()
      $('#sinisters_label').show()
      $('#policies_butt').show()
      $('#policies_label').show()
      $('#provision_cents').prop( 'readOnly', true )
      $('#reserved_fees_cents').prop( 'readOnly', true )
      $('#ensurance_value_cents').prop( 'readOnly', true )
    else
      $('#protection_coljuegos').prop('disabled', true)
      $('#protection_ordinarie').prop('disabled', true)
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
  
