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
      $('#case_id_bap').val("")
    if $('#case_id_sise').val() == "NO APLICA"
      $('#case_id_sise').val("")
    if $('#policy_taker').val() == "NO APLICA"
      $('#policy_taker').val("")
    if $('#number').val() == "0"
      $('#number').val("")
    if $('#exercise').val() == "0"
      $('#exercise').val("")

  initial_values()

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

  #Fuente de litigio
  numSiniestro = ""
  num = numSiniestro.concat(document.getElementById("number").value)
  exer = numSiniestro.concat(document.getElementById("exercise").value)
  poly = numSiniestro.concat(document.getElementById("branch_policy").value)
  comm = numSiniestro.concat(document.getElementById("branch_commercial").value)
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
