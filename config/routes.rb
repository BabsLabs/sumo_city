Rails.application.routes.draw do

  root 'index#index'
  
  get '/about', to: 'about#index'

end
