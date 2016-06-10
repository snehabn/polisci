$(document).ready(function() {
  eventListeners();
});

var eventListeners = function(){
  $("#flag").on("click", displayList);
}

function displayList( event ) {
  event.preventDefault();
  $('#flag').remove();
  $('#candidate-list').css('display', 'block');
};
