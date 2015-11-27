// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require materialize-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .


// $(function() {
//   $('#tutor_modal').click(function(event) {
//     event.preventDefault();
//     alert("you clicked a tutor!");
//   });
// });
// $(document).on("ready page:load", function(){
//       $( "#dialog" ).click(function(e){
//       e.preventDefault();
//     });
// });



$(function() {

  $( "#q" ).focus(function() {
    var default_value = this.value;
    if(this.value == default_value) {
      this.value = '';
    }





$(document).on("ready page:load", function(){







    $("#modal-1, #modal-2").on("change", function() {
      if ($(this).is(":checked")) {
        $("body").addClass("modal-open");
      } else {
        $("body").removeClass("modal-open");
      }
    });

    $(".js-modal-1-close").on("click", function() {
      $("#login-modal").toggle();
    });

    $(".js-modal-2-close").on("click", function() {
      $("#registration-modal").toggle();
    });

    $(".modal-inner").on("click", function(e) {
      e.stopPropagation();
    });

  });





  $("#login-button").click(function(event){
    event.preventDefault();
    // $(".modal").hide();
    $("#login-modal").toggle();
  });

  $("#registration-button").click(function(event){
    event.preventDefault();
    // $(".modal").hide();
    $("#registration-modal").toggle();
  });
