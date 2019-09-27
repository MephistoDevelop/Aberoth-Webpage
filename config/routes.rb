Rails.application.routes.draw do

  get  'login',to: 'sessions#new'
  post 'login',to: 'sessions#create'
  delete 'logout',to: 'sessions#destroy'
  delete 'log-out' , to: 'users#destroy'
  resources :articles
  resources :users
  get '/signup',to:'users#new'
  post '/signup',to: 'users#create'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
