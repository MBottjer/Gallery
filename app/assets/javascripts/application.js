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
  $('.brand-name').arctext({radius: 600});

});

$(document).ready(function() {
  $("#mylink").click(function() {
      $.ajax({
          type: "GET",
          url: "http://localhost:3000/home/index.json",
          dataType: "json",
          success: function(result) {
            // for( object in result ) {
              // result.sort(function(a,b){ return Date.parse(a.pushed_at) - Date.parse(b.pushed_at)})
              // console.log(result[object])
              console.log(result.products)
              result = result.products

              var n = 1

              for (object in result) {
                if (result[object].category === 2) {

                  $('.example-orbit').append(
                    "<li>" + "<img src=" + result[object].photo + " alt='slide " + n +"'/>" + "<div class='orbit-caption'>" + result[object].description + "</div>" + "</li>"
                    );
                console.log(result[object].name)
                n += 1
                }
              }
            // }
          }
      });
  });

});