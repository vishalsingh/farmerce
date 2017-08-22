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
//= require jquery-2.1.3.min.js
//= require jquery_ujs
//= require modernizr.js
//= require pace.min.js
//= require plugins.js
//= require main.js
//= require social-share-button
//= require_tree .

$(document).ready(function() {
  if ($('.pagination').length) {
    $(window).scroll(function() {
      var url = $('.pagination .next_page').attr('href');
      if (url && $(window).scrollTop() >= ($(document).height() - $(window).height())*0.98) {
      	$('.pagination').show();
        $('.pagination').html("<div id='spinner'></div>");
        return $.getScript(url);
      }
    });
    return $(window).scroll();
  }
});