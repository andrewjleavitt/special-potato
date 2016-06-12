Rails.application.routes.draw do
  root to: 'home#index'
  get '/hello_world', to: 'home#hello_world'

  resources :coaches do
    resources :reviews
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
