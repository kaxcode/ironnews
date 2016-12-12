Rails.application.routes.draw do
  resources :stories

  root "stories#index"

  # login and logout features
  get '/login'  => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # Show user signup page and create a new user
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end
