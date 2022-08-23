require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.establish_connection(
    :adapter => 'sqlite3',
    :database => 'database.sqlite3'
)

ActiveRecord::Base.logger = Logger.new(STDERR)
 
class Car < ActiveRecord::Base
end

class Make < ActiveRecord::Base
end


################################start car
get '/' do
    erb :home
end
 #read index
 get '/cars' do 
    @cars = Car.all
    erb :cars_index
 end

##new
get '/cars/new' do
erb :cars_new
end

##create
post '/cars' do
car = Car.new
car.name = params[:nmae]
car.color = params[:color]
car.image = params[:image]
car.save
redirect to("/cars/#{car.id}")
end

  ## show
  get 'cars/:id' do
    @car =Car.find params[:id]
    erb :cars_show
  end

  ##edit
  get 'cars/:id/edit' do
@car =Car.find params[:id]
erb :cars_edit  
end

#update
post '/cars/:id' do
car = Car.find params[:id]
car.name = params[:name]
car.color = params[:color]
car.image = params[:image]
car.save
redirect to("/cars/#{params[:id]}")
end

#delete
get '/cars/:id/delete' do
    car = Car.find params[:id]
    car.destroy
    redirect to('/cars')
end


################################################## start makes 

get '/makes' do
    @makes = Make.all
    erb :makes_index
end

# NEW
# Blank form for a new plant
get '/makes/new' do
    erb :makes_new
end

#CREATE
# Create a new plant in the database from the user's form data
post '/makes' do
    make = Make.new
    make.name = params[:name]
    make.image = params[:image]
    make.save
    redirect to("/makes/#{ make.id }") # GET request for SHOW
end

# SHOW
# Show all the information for a single plant
get '/makes/:id' do
    @make = Make.find params[:id]
    erb :makes_show
end

# EDIT
# Show you the existing plant data in a form
get '/makes/:id/edit' do
    @make = Make.find params[:id]
    erb :makes_edit
end

# UPDATE
# Update the database with new plant data for an existing plant
post '/makes/:id' do
    make = Make.find params[:id]
    make.name = params[:name]
    make.image = params[:image]
    make.save
    redirect to("/makes/#{ make.id }")
end

# DELETE
# Delete a plant from the database
get '/makes/:id/delete' do
    make = Make.find params[:id]
    make.destroy
    redirect to('/makes')
end

after do
    ActiveRecord::Base.connection.close # Housekeeping
end

 