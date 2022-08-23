# # Books I

# ## Specification

# Build a search form that lets the user enter a book title. The Sinatra app will use HTTParty 
#to fetch the data for the chosen book from Google Books and display it on the page. Display the cover, as a bare minimum.

# ## Sample HTTParty URL

# https://www.googleapis.com/books/v1/volumes?q=title:Ulysses

# ### Additional Resources

# - [Sinatra](http://sinatrarb.com)
# - [Google Books Search API](https://developers.google.com/books/docs/v1/reference/volumes/list)
# - [HTTParty Tutorial](http://blog.teamtreehouse.com/its-time-to-httparty)

# Pair Programming Bot

# Recreate this site using Sinatra:

# http://pairprogrammingbot.herokuapp.com/

# You can try to match/steal the existing style or create your own.




require 'sinatra'
require 'sinatra/reloader'
require 'HTTParty'

get '/' do
    erb :home
end
get '/info' do
    book_url = "https://www.googleapis.com/books/v1/volumes?q=title:#{params[:book_name]}"
info = HTTParty.get book_url  #params[:book_name] ##??????????

@cover = info["items"][1]["volumeInfo"]["imageLinks"]["thumbnail"]
    erb :info
end



