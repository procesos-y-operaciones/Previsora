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

  #Valores Iniciales
  initial_values = ->
  if $('#case_id_bap').val() == "NO APLICA"
    $('#case_id_bap').val("")
  if $('#case_id_sise').val() == "NO APLICA"
    $('#case_id_sise').val("")
  if $('#policy_taker').val() == "NO APLICA"
    $('#policy_taker').val("")

  initial_values()

  #Siniestros
  $('#sinisters_container').on('cocoon:after-insert', (e, i) ->
    num = i[0].childNodes[5].childNodes[1]
    eje = i[0].childNodes[9].childNodes[1]
    sp = i[0].childNodes[13].childNodes[1]
    ra = i[0].childNodes[17].childNodes[1]
    sg = i[0].childNodes[21].childNodes[1]

    if num.value == "0"
      num.value = ""

    if eje.value == "0"
      eje.value = ""

    if sg.value == "NO APLICA"
      sg.value = "0000-0000-00-00"

    aux = ->
      sg.value = num.value + "-" + eje.value + "-" + sp.value + "-" + ra.value

    num.onchange = aux
    eje.onchange = aux
    sp.onchange = aux
    ra.onchange = aux
  )

  #SISE o BIZAGI Rule
  id_rule = ->
    if $('#case_id_bap').val() != ""
      $('#case_id_sise').prop("required", false)
    if $('#case_id_sise').val() != ""
      $('#case_id_bap').prop("required", false)

  $('#case_id_bap').change ->
    id_rule()

  $('#case_id_sise').change ->
    id_rule()

  id_rule()
