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
    if $('#departament').val() == "00"
      $('#departament').val("")
    if $('#cities').val() == "000"
      $('#cities').val("")

  initial_values()

  #Initialize functions for each sinister
  $.map $('#sinisters_container')[0].childNodes, ( i ) ->
    if i.className == "nested-fields"
      num = i.childNodes[5].childNodes[1]
      eje = i.childNodes[9].childNodes[1]
      sp = i.childNodes[13].childNodes[1]
      ra = i.childNodes[17].childNodes[1]
      sg = i.childNodes[21].childNodes[1]

      aux = ->
        sg.value = num.value + "-" + eje.value + "-" + sp.value + "-" + ra.value

      num.onchange = aux
      eje.onchange = aux
      sp.onchange = aux
      ra.onchange = aux

  #Siniestros
  $('#sinisters_container').on('cocoon:after-insert', (e, i) ->
    num = i[0].childNodes[5].childNodes[1]
    eje = i[0].childNodes[9].childNodes[1]
    sp = i[0].childNodes[13].childNodes[1]
    ra = i[0].childNodes[17].childNodes[1]
    sg = i[0].childNodes[21].childNodes[1]

    aux = ->
      sg.value = num.value + "-" + eje.value + "-" + sp.value + "-" + ra.value

    num.onchange = aux
    eje.onchange = aux
    sp.onchange = aux
    ra.onchange = aux
  )

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
  litigation_source_rule = ->
    v_option = $('#litigationSource').val()
    if v_option == "SINIESTRO"
      $('#policyCents').prop( 'readOnly', false )
      $('#protection').prop( "disabled", false )
      $('#coensurance_type').prop( "disabled", false )
      $('#coensurance_type_hid').prop( "disabled", true )
      $('#reinsurance_type').prop( "disabled", false )
      $('#reinsurance_type_hid').prop( "disabled", true )
      $('#siniesters_butt').show()
      $('#sinisters_label').show()
      $('#policies_butt').show()
      $('#policies_label').show()
      $('#provision_cents').prop( 'readOnly', true )
      $('#reserved_fees_cents').prop( 'readOnly', true )
      $('#ensurance_value_cents').prop( 'readOnly', true )
    else
      $('#policyCents').prop( 'readOnly', true )
      $('#policyCents').val("0")
      $('#protection').val("")
      $('#protection').prop( "disabled", true )
      $('#coensurance_type').prop( "disabled", true )
      $('#coensurance_type_hid').prop( "disabled", false )
      $('#reinsurance_type').prop( "disabled", true )
      $('#reinsurance_type_hid').prop( "disabled", false )
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

  reserve_cents_sum = ->
    console.log $(".reserve_cents")

  $(".reserve_cents").change ->
    console.log "Change"
    reserve_cents_sum()


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


  #Ingresa al comité
  join_committee_rule = ->
    v_option = document.getElementById("join_committee").value
    if v_option == "SI"
      document.getElementById("committee_date").readOnly = false
      $('#committee').prop( "disabled", false )
      $('#committee_hid').prop( "disabled", true )
    else
      document.getElementById("committee_date").readOnly = true
      $('#committee_date').val("0-0-0")
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
