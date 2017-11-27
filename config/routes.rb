Rails.application.routes.draw do
  root 'static_pages#home'

  get '/my-series' => 'static_pages#my_series'
  get '/add_or_remove_serie/:id' => 'series#add_or_remove_serie', as: :add_or_remove_serie

  resources :series
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }
end
