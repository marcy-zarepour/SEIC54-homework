Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root :to => 'pages#home'

get '/magic' => 'magic#form'
get '/magic/result' => 'magic#result'


get '/secret' => 'secret#form'
get '/secret/result' => 'secret#result'


end
