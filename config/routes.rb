Rails.application.routes.draw do

  get  'signup',to: 'sessions#new'
  post 'signup',to: 'sessions#create'
  delete 'logout',to: 'sessions#destroy'
  resources :articles
  get '/signup',to:'users#new'
  post '/signup',to: 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
