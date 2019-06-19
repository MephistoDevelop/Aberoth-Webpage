Rails.application.routes.draw do
  resources :articles
=begin
  get "/articles" metodo de  index
  post "/articles" metodo create
  delete "/articles" Metodo delete
  get "/articles" Metodo Delete
  get "/articles/:id" Metodo show
  get "/articles/new" metodo new
  get "/articles/:id/edit" Metodo Edit
  patch "/articles/:id" Metodo update
  put "/articles/:id" Metodo Update
=end

  get 'welcome/index'
  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
