Rails.application.routes.draw do
  resource :session
  resources :users
  root "movies#index"
  resources :movies do
    resources :reviews
  end
  get 'signup' => 'users#new'
end
