(function(){$(function(){var e,n,t,a,o,r,i,c,d,l,s,u,p,m,y;return o="Ingrese s\xf3lo may\xfasculas, numeros, guiones y/o espacios.",$(this).find("textarea").on("input change propertychange",function(){var e,n,t;if(void 0!==(n=$(this).attr("pattern"))&&!1!==n)return t=new RegExp("^"+n.replace(/^\^|\$$/g,"")+"$","g"),e=!$(this).val().match(t),"function"==typeof this.setCustomValidity?this.setCustomValidity(e?o:""):($(this).toggleClass("error",!!e),$(this).toggleClass("ok",!e),e?$(this).attr("title",o):$(this).removeAttr("title"))}),function(){if("NO APLICA"===$("#contingency_reason").val()&&$("#contingency_reason").val("PENDIENTE"),"NO APLICA"===$("#case_id_bap").val()&&$("#case_id_bap").val("PENDIENTE"),"NO APLICA"===$("#case_id_sise").val()&&$("#case_id_sise").val("PENDIENTE"),"NO APLICA"===$("#attorny").val())return $("#attorny").val("PENDIENTE")}(),y=function(){return"COLJUEGOS"===document.getElementById("subprocessClass").value?($("#gubernatorial_coljuegos").prop("disabled",!1),$("#gubernatorial_coljuegos").show(),$("#gubernatorial_ordinarie").prop("disabled",!0),$("#gubernatorial_ordinarie").hide(),$("#departament_coljuegos").prop("disabled",!1),$("#departament_coljuegos").show(),$("#departament_coljuegos").trigger("change"),$("#departament_ordinarie").prop("disabled",!0),$("#departament_ordinarie").hide(),$("#departament_ordinarie").val(""),$("#protection_coljuegos").prop("disabled",!1),$("#protection_coljuegos").show(),$("#protection_ordinarie").prop("disabled",!0),$("#protection_ordinarie").hide(),$("#protection_ordinarie").val(""),$("#moneyCents").prop("disabled",!1),$("#moneyCents").show(),$("#moneyType").prop("disabled",!0),$("#moneyType").hide(),$("#moneyType").val(""),document.getElementById("dolarValueCents").readOnly=!0,$("#dolarValueCents").val("0"),$("#office_name_col").prop("disabled",!1),$("#office_name_col").show(),$("#office_name_ord").prop("disabled",!0),$("#office_name_ord").hide(),$("#office_name_ord").val("")):($("#gubernatorial_coljuegos").prop("disabled",!0),$("#gubernatorial_coljuegos").hide(),$("#gubernatorial_ordinarie").prop("disabled",!0),$("#gubernatorial_ordinarie").show(),$("#departament_coljuegos").prop("disabled",!0),$("#departament_coljuegos").hide(),$("#departament_ordinarie").prop("disabled",!1),$("#departament_ordinarie").show(),$("#protection_coljuegos").prop("disabled",!1),$("#protection_coljuegos").show(),$("#protection_ordinarie").prop("disabled",!0),$("#protection_ordinarie").hide(),$("#protection_ordinarie").val(""),$("#moneyCents").prop("disabled",!0),$("#moneyCents").hide(),$("#moneyType").prop("disabled",!1),$("#moneyType").show(),document.getElementById("dolarValueCents").readOnly=!1,$("#office_name_col").prop("disabled",!0),$("#office_name_col").hide(),$("#office_name_ord").prop("disabled",!1),$("#office_name_ord").show(),$("#protection_coljuegos").prop("disabled",!0),$("#protection_coljuegos").hide(),$("#protection_ordinarie").prop("disabled",!1),$("#protection_ordinarie").show())},$("#subprocessClass").change(function(){return y()}),y(),function(){return"NO APLICA"===$("#correspondency_radicate").val()||"NO PRESENTA"===$("#correspondency_radicate").val()?($("#radicate").val("No"),document.getElementById("correspondency_radicate").readOnly=!0,$("#correspondency_radicate").val("NO PRESENTA")):$("#radicate").val("Si")}(),m=function(){var e;if("Si"===(e=document.getElementById("radicate").value)&&(document.getElementById("correspondency_radicate").readOnly=!1),"No"===e)return document.getElementById("correspondency_radicate").readOnly=!0,$("#correspondency_radicate").val("NO PRESENTA")},$("#radicate").change(function(){return m()}),s="",l=s.concat(document.getElementById("number").value),r=s.concat(document.getElementById("exercise").value),p=s.concat(document.getElementById("branch_policy").value),t=s.concat(document.getElementById("branch_commercial").value),i=function(){return"SINIESTRO"===document.getElementById("litigationSource").value?(document.getElementById("policyCents").readOnly=!1,$("#protection_coljuegos").prop("disabled",!1),$("#protection_ordinarie").prop("disabled",!1),document.getElementById("number").readOnly=!1,document.getElementById("exercise").readOnly=!1,$("#branch_policy").prop("disabled",!1),$("#branch_commercial").prop("disabled",!1),$("#sinister").val(l+"-"+r+"-"+p+"-"+t)):(document.getElementById("protection_coljuegos").readOnly=!0,document.getElementById("protection_ordinarie").readOnly=!0,document.getElementById("policyCents").readOnly=!0,$("#policyCents").val("0"),$("#protection_coljuegos").prop("disabled",!0),$("#protection_ordinarie").prop("disabled",!0),document.getElementById("number").readOnly=!0,$("#number").val("0"),document.getElementById("exercise").readOnly=!0,$("#exercise").val("0"),$("#branch_policy").prop("disabled",!0),$("#branch_policy").val("0"),$("#branch_commercial").prop("disabled",!0),$("#branch_commercial").val("0"),$("#sinister").val("NO APLICA"))},$("#litigationSource").change(function(){return i()}),i(),$("#number").change(function(){return l=s.concat(document.getElementById("number").value),$("#sinister").val(l+"-"+r+"-"+p+"-"+t)}),$("#exercise").change(function(){return r=s.concat(document.getElementById("exercise").value),$("#sinister").val(l+"-"+r+"-"+p+"-"+t)}),$("#branch_policy").change(function(){return p=s.concat(document.getElementById("branch_policy").value),$("#sinister").val(l+"-"+r+"-"+p+"-"+t)}),$("#branch_commercial").change(function(){return t=s.concat(document.getElementById("branch_commercial").value),$("#sinister").val(l+"-"+r+"-"+p+"-"+t)}),a=function(){var e,n;return e=document.getElementById("ensuranceValue").value,n=document.getElementById("subprocessClass").value,e>=1e9&&"71"===n?($("#reinsuranceTypeSF").prop("disabled",!0),$("#reinsuranceTypeSF").hide(),$("#reinsuranceType").prop("disabled",!1),$("#reinsuranceType").show()):($("#reinsuranceTypeSF").prop("disabled",!1),$("#reinsuranceTypeSF").show(),$("#reinsuranceType").prop("disabled",!0),$("#reinsuranceType").hide(),$("#reinsuranceType").val(""))},$("#ensuranceValue").change(function(){return a()}),$("#subprocessClass").change(function(){return a()}),a(),function(){var e,n;return e=$("#policies").val(),n=$("#sinisters").val(),"NO APLICA"===e&&"NO APLICA"===n||"PENDIENTE"===e&&"PENDIENTE"===n?($("#more_policies").val("No"),document.getElementById("policies").readOnly=!0,document.getElementById("sinisters").readOnly=!0,$("#policies").val("PENDIENTE"),$("#sinisters").val("PENDIENTE")):$("#more_policies").val("Si")}(),d=function(){var e;if("Si"===(e=document.getElementById("more_policies").value)&&(document.getElementById("policies").readOnly=!1,document.getElementById("sinisters").readOnly=!1),"No"===e)return document.getElementById("policies").readOnly=!0,$("#policies").val("PENDIENTE"),document.getElementById("sinisters").readOnly=!0,$("#sinisters").val("PENDIENTE")},$("#more_policies").change(function(){return d()}),c=function(){return"1"===document.getElementById("moneyType").value?(document.getElementById("dolarValueCents").readOnly=!0,$("#dolarValueCents").val(0)):document.getElementById("dolarValueCents").readOnly=!1},$("#moneyType").change(function(){return c()}),c(),u=function(){return"OTRO"===document.getElementById("office_name_ord").value?($("#office_text").prop("disabled",!1),$("#office_text").show()):($("#office_text").prop("disabled",!0),$("#office_text").hide(),$("#office_text").val(""))},$("#office_name_ord").change(function(){return u()}),u(),e=function(){return"EN CURSO"===document.getElementById("caseState").value?($("#currentStageVer").prop("disabled",!1),$("#fail_value").prop("disabled",!0),$("#fail_value").val("0"),$("#desition_date").prop("disabled",!0),$("#desition_date").prop("0-0-0"),$("#fail_previ").prop("disabled",!0),$("#fail_previ").val("0"),$("#caseTermination").prop("disabled",!0),$("#caseTermination").val("")):($("#currentStageVer").prop("disabled",!0),$("#currentStageVer").val("PENDIENTE"),$("#fail_value").prop("disabled",!1),$("#desition_date").prop("disabled",!1),$("#fail_previ").prop("disabled",!0),$("#caseTermination").prop("disabled",!1))},$("#caseState").change(function(){return e()}),e(),function(){var e,n,t;return e=$("#coactive_radicate").val(),n=$("#coactive_value_cents").val(),t=$("#garnish_value").val(),"NO APLICA"===e&&"0"===n&&"0"===t?($("#coactive").val("No"),document.getElementById("coactive_radicate").readOnly=!0,document.getElementById("coactive_value_cents").readOnly=!0,document.getElementById("garnish_value").readOnly=!0,$("#coactive_radicate").val("PENDIENTE")):$("#coactive").val("Si")}(),n=function(){var e;if("Si"===(e=document.getElementById("coactive").value)&&(document.getElementById("coactive_radicate").readOnly=!1,document.getElementById("coactive_value_cents").readOnly=!1,document.getElementById("garnish_value").readOnly=!1),"No"===e)return document.getElementById("coactive_radicate").readOnly=!0,$("#coactive_radicate").val("NO APLICA"),document.getElementById("coactive_value_cents").readOnly=!0,$("#coactive_value_cents").val("0"),document.getElementById("garnish_value").readOnly=!0,$("#garnish_value").val("0")},$("#coactive").change(function(){return n()}),$("#departament_ordinarie").change(function(){var e;return $(this),e=$("#cities"),$.getJSON("/cities/"+$(this).val(),function(n){return e.empty(),$.each(n,function(t){var a;return a='<option value="'+n[t].toUpperCase()+'">'+n[t].toUpperCase()+"</option>",e.append(a)})})}),$("#departament_ordinarie").ready(function(){var e;return $(this),e=$("#cities"),$.getJSON("/cities/"+$(this).val(),function(n){return e.empty(),$.each(n,function(t){var a;return a='<option value="'+n[t].toUpperCase()+'">'+n[t].toUpperCase()+"</option>",e.append(a)})})}),$("#departament_coljuegos").change(function(){var e;return $(this),e=$("#cities"),$.getJSON("/cities/"+$(this).val(),function(n){return e.empty(),$.each(n,function(t){var a;return a='<option value="'+n[t].toUpperCase()+'">'+n[t].toUpperCase()+"</option>",e.append(a)})})}),$("#departament_coljuegos").ready(function(){var e;return $(this),e=$("#cities"),$.getJSON("/cities/"+$(this).val(),function(n){return e.empty(),$.each(n,function(t){var a;return a='<option value="'+n[t].toUpperCase()+'">'+n[t].toUpperCase()+"</option>",e.append(a)})})})})}).call(this);