$('#button').on('click',function(){
    $.ajax('http://api.open-notify.org/astros.json').done(function(data){
        console.log(data)
        data.people.forEach(function(person){
           $('#list').append(`<li>name: ${person.name}, craft: ${person.craft}</li>`) 
        })
    })
})

https://api.openweathermap.org/data/2.5/weather?lat=-33.8712146&lon=151.2023144&appid=04b7846d8f82de222cde5046620df831
