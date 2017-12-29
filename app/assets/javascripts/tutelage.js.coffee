# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  #Objection Rule
  objection_rule = ->
    v_option = document.getElementById('objection').value
    if v_option == "No"
      document.getElementById('objection_date').readOnly = true
      document.getElementById('objecter').readOnly = true
    if v_option == "Si"
      document.getElementById('objection_date').readOnly = false
      document.getElementById('objecter').readOnly = false

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
      $('#setence_type_second_company').prop( "disabled", true );
      $('#sentence_type_desacate').prop( "disabled", true );
    if v_option == "Si"
      document.getElementById('date_notification_desacate').readOnly = false
      document.getElementById('date_answer_desacate').readOnly = false
      document.getElementById('date_notification_desition_desacate').readOnly = false
      $('#setence_type_second_company').prop( "disabled", false );
      $('#sentence_type_desacate').prop( "disabled", false );

  $('#desacate').change ->
    desacate_rule()

  desacate_rule()
