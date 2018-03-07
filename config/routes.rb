Rails.application.routes.draw do
  resources :favorites
  resources :genres
  resource :session
  resources :users
  root "movies#index"
  resources :movies do
    resources :reviews
  end
  get 'signup' => 'users#new'
  get 'movies/filter/:filter' => 'movies#index', as: :filtered_movies
end
