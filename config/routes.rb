Rails.application.routes.draw do

  root 'index#index'
  
  get '/about', to: 'about#index'
  get '/terms', to: 'terms#index'

end
