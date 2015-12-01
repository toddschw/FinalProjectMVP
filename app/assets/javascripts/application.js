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
  });

});



$(function() {

  $("#sendrequest").click(function(){
      $.get("subjects", function(data, status){
          alert("Data: " + data + "\nStatus: " + status);
      });
  });

});
