Rails.application.routes.draw do

  root 'index#index'
  
  get '/about', to: 'about#index'
  get '/terms', to: 'terms#index'
  get '/explorer', to: 'explorer#index'

end
