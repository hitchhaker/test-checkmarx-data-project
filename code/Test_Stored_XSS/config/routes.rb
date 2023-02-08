Rails.application.routes.draw do
  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  match "articles/raw" => "articles#raw", :via => :get

  resources :articles


  get 'welcome/index'
 
  root 'welcome#index'
end
