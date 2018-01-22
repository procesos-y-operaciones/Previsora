$ ->
  $('tr').mouseover ->
    id3 = 'e'+this.id
    id4 = 't'+this.id
    td3 = document.getElementById(id3)
    td4 = document.getElementById(id4)
    $(td3).show()
    $(td4).show()

  $('tr').mouseleave ->
    id3 = 'e'+this.id
    id4 = 't'+this.id
    td3 = document.getElementById(id3)
    td4 = document.getElementById(id4)
    $(td3).hide()
    $(td4).hide()
