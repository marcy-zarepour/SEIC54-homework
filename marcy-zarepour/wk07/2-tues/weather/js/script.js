const fetchWeather = function(description){
    $.ajax('https://api.openweathermap.org/data/2.5/weather?lat=-33.8712146&lon=151.2023144&appid=04b7846d8f82de222cde5046620df831').done(function(data){
        console.log(data);
        //const temp = data.main.temp
            $('#temp').append(`weather:${data.main.temp- 273}`)
            $('#main').append(`weather:${data.weather.description}`)
        })
}

$('#search').on('submit',function(event){
    event.preventDefault();
    const weather = $('#title').val();
    fetchWeather(title);
})