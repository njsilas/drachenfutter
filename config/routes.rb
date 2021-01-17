Rails.application.routes.draw do
  resources :measurements
  resources :reviews
  get 'reviews/new'
  get 'reviews/create'
  get 'reviews/edit'
  get 'reviews/show'

  resources :recipes
  get 'recipes/new'
  get 'recipes/create'
  get 'recipes/show'

  resources :ingredients
  get 'ingredients/index'

  resources :users
  get '/signup', to: 'users#new' #using for signup
  post '/users/new', to: 'users#create' #using for signup
  get 'users/show' #
  root 'welcome#home'
  get '/login' => 'sessions#new' #for log in
  post '/login' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
