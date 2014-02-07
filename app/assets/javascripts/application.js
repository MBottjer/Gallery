// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.arctext
//= require foundation
//= require turbolinks
//= require jsapi 
//= require mustache
//= require_tree .

$(function(){ $(document).foundation(); 
});

$(document).ready(function() {
  $('#my-link').click(function(event){
    $(".gallery").html("<%= escape_javascript(render(:partial => 'views/home/gallery') %>")
    event.preventDefault(); // Prevent link from following its href
  });
});


$(document).ready(function() {
  $('.brand-name').arctext({radius: 600});
});