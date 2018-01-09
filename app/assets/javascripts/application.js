// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks


function input_pendiente_rule(input) {
  var value = input.value;
  if (value === "PENDIENTE" && input.readOnly == false) {
    input.value = "";
  }
}
function input_empty_pendiente_rule(input) {
  var value = input.value;
  if (value === "" && input.readOnly == false) {
    input.value = "PENDIENTE";
  }
}
function input_nopresenta_rule(input) {
  var value = input.value;
  if (value === "NO PRESENTA" && input.readOnly == false) {
    input.value = "";
  }
}
function input_empty_nopresenta_rule(input) {
  var value = input.value;
  if (value === "" && input.readOnly == false) {
    input.value = "NO PRESENTA";
  }
}
function input_noaplica_rule(input) {
  var value = input.value;
  if (value === "NO APLICA" && input.readOnly == false) {
    input.value = "";
  }
}
function input_empty_noaplica_rule(input) {
  var value = input.value;
  if (value === "" && input.readOnly == false) {
    input.value = "NO APLICA";
  }
}
function formatting(input) {
  var value = input.value;
  var num = value.replace(/,|'/g, "");
  num = num.toString().replace(/\B(?=(\d{6})+(?!\d))/g, "'");
  num = num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  //console.log(num+"\n\n");
  input.value = num;
}
