$ ->

  reserve_type_rule = ->
    value = $('#type_capture').val()
    switch value
      when "0"
        $('#reserve_cents').prop("disabled", true)
        $('#reserve_cents_modify').prop("disabled", true)
        $('#reserve_cents_total').prop("disabled", true)
        $('#reserve_cents_date').prop("disabled", true)
        $('#reserved_fees_cents').prop("disabled", true)
        $('#reserved_fees_cents_modify').prop("disabled", true)
        $('#reserved_fees_cents_total').prop("disabled", true)
        $('#reserved_fees_cents_date').prop("disabled", true)
        $('#reserve_cents').prop("readOnly", true)
        $('#reserve_cents_modify').prop("readOnly", true)
        $('#reserved_fees_cents').prop("readOnly", true)
        $('#reserved_fees_cents_modify').prop("readOnly", true)
      when "1"
        $('#reserve_cents').prop("disabled", false)
        $('#reserve_cents_modify').prop("disabled", false)
        $('#reserve_cents_total').prop("disabled", false)
        $('#reserve_cents_date').prop("disabled", false)
        $('#reserved_fees_cents').prop("disabled", true)
        $('#reserved_fees_cents_modify').prop("disabled", true)
        $('#reserved_fees_cents_total').prop("disabled", true)
        $('#reserved_fees_cents_date').prop("disabled", true)
        $('#reserve_cents').prop("readOnly", false)
        $('#reserve_cents_modify').prop("readOnly", false)
        $('#reserved_fees_cents').prop("readOnly", true)
        $('#reserved_fees_cents_modify').prop("readOnly", true)
      when "2"
        $('#reserve_cents').prop("disabled", true)
        $('#reserve_cents_modify').prop("disabled", true)
        $('#reserve_cents_total').prop("disabled", true)
        $('#reserve_cents_date').prop("disabled", true)
        $('#reserved_fees_cents').prop("disabled", false)
        $('#reserved_fees_cents_modify').prop("disabled", false)
        $('#reserved_fees_cents_total').prop("disabled", false)
        $('#reserved_fees_cents_date').prop("disabled", false)
        $('#reserve_cents').prop("readOnly", true)
        $('#reserve_cents_modify').prop("readOnly", true)
        $('#reserved_fees_cents').prop("readOnly", false)
        $('#reserved_fees_cents_modify').prop("readOnly", false)
      when "3"
        $('#reserve_cents').prop("disabled", false)
        $('#reserve_cents_modify').prop("disabled", false)
        $('#reserve_cents_total').prop("disabled", false)
        $('#reserve_cents_date').prop("disabled", false)
        $('#reserved_fees_cents').prop("disabled", false)
        $('#reserved_fees_cents_modify').prop("disabled", false)
        $('#reserved_fees_cents_total').prop("disabled", false)
        $('#reserved_fees_cents_date').prop("disabled", false)
        $('#reserve_cents').prop("readOnly", false)
        $('#reserve_cents_modify').prop("readOnly", false)
        $('#reserved_fees_cents').prop("readOnly", false)
        $('#reserved_fees_cents_modify').prop("readOnly", false)

  $('#type_capture').change ->
    reserve_type_rule()

  reserve_type_rule()

  #Total reserve_cents_total
  reserve_cents_total = ->
    reserve_cents = $('#reserve_cents').val()
    reserve_cents = reserve_cents.split("'").join("")
    reserve_cents = reserve_cents.split(",").join("")
    reserve_cents_modify = $('#reserve_cents_modify').val()
    reserve_cents_modify = reserve_cents_modify.split("'").join("")
    reserve_cents_modify = reserve_cents_modify.split(",").join("")
    $('#reserve_cents_total').val(reserve_cents_modify - reserve_cents)

  $('#reserve_cents_modify').change ->
    reserve_cents_total()
  $('#reserve_cents').change ->
    reserve_cents_total()

  reserve_cents_total()

  #Total reserved_fees_cents_total
  reserved_fees_cents_total = ->
    reserved_fees_cents = $('#reserved_fees_cents').val()
    reserved_fees_cents = reserved_fees_cents.split("'").join("")
    reserved_fees_cents = reserved_fees_cents.split(",").join("")
    reserved_fees_cents_modify = $('#reserved_fees_cents_modify').val()
    reserved_fees_cents_modify = reserved_fees_cents_modify.split("'").join("")
    reserved_fees_cents_modify = reserved_fees_cents_modify.split(",").join("")
    $('#reserved_fees_cents_total').val(reserved_fees_cents_modify - reserved_fees_cents)

  $('#reserved_fees_cents_modify').change ->
    reserved_fees_cents_total()
  $('#reserved_fees_cents').change ->
    reserved_fees_cents_total()

  reserved_fees_cents_total()
