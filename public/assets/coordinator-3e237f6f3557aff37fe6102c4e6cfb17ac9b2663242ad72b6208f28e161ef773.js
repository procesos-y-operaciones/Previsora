(function(){$(function(){var e;return e=function(){var t;return t=$("#cities").val(),$.getJSON("/cities/"+$("#departament").val(),function(a){return $("#cities").empty(),$("#cities").append('<option value="">SELECCIONE</option>'),$.each(a,function(e){var n;return n=t===a[e].code?'<option selected="selected" value="'+a[e].code+'">'+a[e].name+"</option>":'<option value="'+a[e].code+'">'+a[e].name+"</option>",$("#cities").append(n)})})},$("#departament").change(function(){return e()}),e(),$("#filters").on("shown.bs.collapse",function(){return $("#collapseButton").removeClass("fa fa-angle-double-down").addClass("fa fa-angle-double-up")}),$("#filters").on("hidden.bs.collapse",function(){return $("#collapseButton").removeClass("fa fa-angle-double-up").addClass("fa fa-angle-double-down")})})}).call(this);