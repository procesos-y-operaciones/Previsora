$ ->

  #Radicate Rule
  radicate_rule = ->
    v_option = document.getElementById("radicate").value
    if v_option == "Si"
      document.getElementById("correspondency_radicate").readOnly = false
      $("#correspondency_radicate").val("")
    if v_option == "No"
      document.getElementById("correspondency_radicate").readOnly = true
      $("#correspondency_radicate").val("NO PRESENTA")

  $('#radicate').change ->
    radicate_rule()

  radicate_rule()

  #Objection Rule
  objection_rule = ->
    v_option = document.getElementById('objection').value
    if v_option == "No"
      document.getElementById('objection_date').readOnly = true
      document.getElementById('objecter').readOnly = true
      document.getElementById('date_imp').readOnly = true
      document.getElementById('date_imp').readOnly = true
      document.getElementById('date_notification_imp').readOnly = true
      $('#setence_type_second_company_id').prop( "disabled", true )
    if v_option == "Si"
      document.getElementById('objection_date').readOnly = false
      document.getElementById('objecter').readOnly = false
      document.getElementById('date_imp').readOnly = false
      document.getElementById('date_imp').readOnly = false
      document.getElementById('date_notification_imp').readOnly = false
      document.getElementById('setence_type_second_company_id').readOnly = false
      $('#setence_type_second_company_id').prop( "disabled", false )

  $('#objection').change ->
    objection_rule()

  objection_rule()

  #Desacate Rule
  desacate_rule = ->
    v_option = document.getElementById('desacate').value
    if v_option == "No"
      document.getElementById('date_notification_desacate').readOnly = true
      document.getElementById('date_answer_desacate').readOnly = true
      document.getElementById('date_notification_desition_desacate').readOnly = true
      $('#setence_type_second_company').prop( "disabled", true )
      $('#sentence_type_desacate').prop( "disabled", true )
    if v_option == "Si"
      document.getElementById('date_notification_desacate').readOnly = false
      document.getElementById('date_answer_desacate').readOnly = false
      document.getElementById('date_notification_desition_desacate').readOnly = false
      $('#setence_type_second_company').prop( "disabled", false )
      $('#sentence_type_desacate').prop( "disabled", false )

  $('#desacate').change ->
    desacate_rule()

  desacate_rule()

  #Case Termination Rule
  case_termination_rule = ->
    v_option = document.getElementById('caseTermination').value
    if v_option == "0"
      document.getElementById('desition_date').readOnly = true
    else
      document.getElementById('desition_date').readOnly = false

  $('#caseTermination').change ->
    case_termination_rule()

  case_termination_rule()

  #Departament Rule
  $('#departament').change ->
    input_state = $(this)
    output_state = $('#cities')
    $.getJSON '/cities/' + $(this).val(), (data) ->
      output_state.empty()
      $.each data, (i) ->
        opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>'
        output_state.append opt
