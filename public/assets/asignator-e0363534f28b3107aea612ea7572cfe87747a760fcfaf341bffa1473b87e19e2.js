(function(){$(function(){return $(".clickable-row").click(function(){return window.location=$(this).data("href")}),$("#departament").change(function(){var t;return $(this),t=$("#cities"),$.getJSON("/cities/"+$(this).val(),function(){return t.empty(),t.append('<option value="" selected="selected">SELECCIONE</option>')}),$.each(data,function(e){var n;return n='<option value="'+data[e].toUpperCase()+'">'+data[e].toUpperCase()+"</option>",t.append(n)})}),$("#all").click(function(){var t;return $("#all").is(":checked")?(t=document.getElementsByTagName("input"),$(t).each(function(){if("checkbox"===$(this).attr("type")&&"all"!==$(this).attr("id"))return $(this).prop("checked",!0)})):(t=document.getElementsByTagName("input"),$(t).each(function(){if("checkbox"===$(this).attr("type")&&"all"!==$(this).attr("id"))return $(this).prop("checked",!1)}))})})}).call(this);