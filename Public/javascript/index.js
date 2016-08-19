

console.log("Hello");

// LISTENERS

$(document).on('click', '#add-task', function() {
  var description = getTaskDescription();
  addTaskToList(description);
  saveTask(description);
  clearInput();
});

// HELPERS

function getTaskDescription() {
  return $('#task').val();
}

function addTaskToList(description) {
  var newTask = "<div>" + description + "</div>";
  $('#to-do-list').append(newTask);
}

function clearInput() {
  $('#task').val("");
}

// SEND TO SERVER
function saveTask(description) {
  $.post('/tasks', { description: description })
    .success(function(res) {
      console.log(res);
    })
    .error(function(err) {
      console.log(err);
    });
}

