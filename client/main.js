// $.ajax({
//   method: 'GET',
//   url: 'http://localhost:9393/Chicago/json',
//   success: function(response){
//     console.log(response);
//     $('#city').text(response.name);
//     for(i = 0; i < response.top_attractions.length; i++){
//       $('#attractions').append('<li>'+ response.top_attractions[i] + '</li>')
//     }
//   }
// })



$('.link').click(function(e){
  e.preventDefault();
  var myUrl = $(e.target).attr('href')

  $.ajax({
    method: 'GET',
    url: myUrl,
    success: function(response){
      $('#attractions').empty();
      $('#city').text(response.name);
      $('#city').append('<h2>Top Attractions</h2>')
      for (i = 0; i < response.top_attractions.length; i++){

        $('#attractions').append('<li>' + response.top_attractions[i] + '</li>')
      }
    }
  })
})
