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

function iterateThroughPhotos(result, category_id){
    var slide_number = 1
    for (object in result) {
        if (result[object].category === category_id) {

          appendOrbitSlider(result, slide_number)
        slide_number += 1
      }
    }
}

function appendOrbitSlider(result, slide_number) {

    $('.example-orbit').append(
              "<li>" + "<img src=" + result[object].photo + " alt='slide " + slide_number +"'/>" + "<div class='orbit-caption'>" + result[object].description + "</div>" + "</li>"
    );
}

function getJsonViaAjax(url, category_id){
  $.ajax({
            type: "GET",
            url: url,
            dataType: "json",
            success: function(result) {
                result = result.products

                iterateThroughPhotos(result, category_id)
            }
        });
}

$(document).ready(function() {

  var elemm = document.getElementById('bespoke')
  elemm.onclick = function() { 
    // $('.example-orbit').fadeOut();
    $('.example-orbit').empty();
      getJsonViaAjax("http://localhost:3000/home/index.json", 2)
   };

  $("#home").click(function() {
    $('.example-orbit').empty();
      getJsonViaAjax("http://localhost:3000/home/index.json", 1)
  });

});



$(document).ready(function(){

    var elemm = document.getElementById('arrow')

    $(elemm).on("click" ,function(){
                scrolled=650;
        
        $('body, html').animate({
                scrollTop:  scrolled
           });

      });

});