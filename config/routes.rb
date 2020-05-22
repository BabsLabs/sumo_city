Rails.application.routes.draw do

  root 'index#index'
  
  get '/about', to: 'about#index'
  get '/terms', to: 'terms#index'
  get '/explorer', to: 'explorer#index'

  get  '/stables', to: 'stables#index'
  get  '/stables/:id', to: 'stables#show'
  
  get  '/sumos', to: 'sumos#index'
  get  '/sumos/:id', to: 'sumos#show'

end
