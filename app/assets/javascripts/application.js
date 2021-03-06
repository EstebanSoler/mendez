// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.all
//= require modernizr
//= require index
//= require jquery-picture-min
//= require maps
//= require_tree .


$(document).foundation();

$(function(){
    $('figure.responsive').picture();
});

$(document).ready(function() {

  $(document).foundation('orbit', {bullets: true, timer_speed: 4000});

  $(".slider .data-orbit").removeClass("data-orbit").attr("data-orbit", "");

  // Override Slider Header
  $(".orbit-next, .orbit-prev").css({display: "none"});
  $(".orbit-timer").css({display: "none"});
  $(".orbit-slide-number").remove();
  $(".orbit-bullets li").each( function() {
    $(this).text($(this).attr("data-orbit-slide-number"));
  } );

  // Carga Articulos home
  $("#home-articles").html($("#home-news").html())
  $('figure.responsive').picture();
});