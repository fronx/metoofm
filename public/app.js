var client = new Faye.Client('/faye');
var subscription = client.subscribe('/scrobbles', function(message) {
  console.log(message);
});
