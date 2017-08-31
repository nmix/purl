//= require rails-ujs
//= require turbolinks
//= require jquery/dist/jquery
//= require popper.js/dist/umd/popper.min.js
//= require tether/dist/js/tether
//= require bootstrap/dist/js/bootstrap
//= require clipboard/dist/clipboard
//= require_tree .

var ready;
ready = function() {  
  new Clipboard('.clipboard-trigger');
};

// $( document ).ready(ready);
// $( document ).on('page:load', ready);
$( document ).on('turbolinks:load', ready);