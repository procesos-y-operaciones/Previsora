$ ->
  $('#filter_btn').click ->
    if $(this).attr('aria-expanded') == "true"
      this.innerHTML = '<span class="glyphicon glyphicon-chevron-down"></span>'
    else
      this.innerHTML = '<span class="glyphicon glyphicon-chevron-up"></span>'
