require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do
    erb :home
end

#INDEX
get '/cars' do
@cars = query_db 'SELECT * FROM cars'
erb :cars_index
end
# NEW
get '/cars/new' do
    erb :cars_new
end

#insert
post '/cars' do
    query_db "INSERT INTO cars(make, model, image) VALUES ('#{ params[:name] }', '#{ params[:model] }', '#{ params[:image] }')"
    redirect to('/cars')
end

#show
get '/cars/:id' do
    @car = query_db "SELECT * FROM cars WHERE id=#{params[:id]}"
    @car = @car.first #changing array to hash
    erb :cars_show
end


#edit
get '/cars/:id/edit' do
    @car = query_db " SELECT * FROM cars WHERE id=#{params[:id]}"
    @car = @car.first
    erb :cars_edit
end

#update 
post '/cars/:id' do
    query_db "UPDATE cars SET name='#{ params[:name] }', model='#{ params[:model] }', image='#{ params[:image] }' WHERE id=#{ params[:id] }"
    redirect to("/cars/#{ params[:id] }") # GET request ##go to cars id
end

# Destroy
get '/cars/:id/delete' do
    query_db "DELETE FROM cars WHERE id=#{ params[:id] }"
    redirect to('/cars')
end


def query_db(sql_statement)
    puts sql_statement 
    db = SQLite3::Database.new 'database.sqlite3'
    db.results_as_hash = true
    results = db.execute sql_statement   ##conection beetween databass and ruby// read sql for us
    db.close
    results 
end