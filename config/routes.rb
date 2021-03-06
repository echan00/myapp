Myapp::Application.routes.draw do


  root :to => "users#index"

  get 'home', to: 'home#index'
  
  resources :products, :only => [:index, :show, :edit, :update, :new, :create]  
  resources :users, :only => [:index, :show, :edit, :update ]
  resources :associations, only: [:create, :destroy]

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'

end
