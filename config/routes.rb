Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get '/hello_world', to: 'home#hello_world'



  resources :coaches do
    resources :reviews
  end

end
