//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require turbolinks
//= require_tree .

var ready;
ready = function() {  
  new Clipboard('.clipboard-trigger');
};

// $( document ).ready(ready);
// $( document ).on('page:load', ready);
$( document ).on('turbolinks:load', ready);
