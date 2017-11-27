Rails.application.routes.draw do
  root 'static_pages#home'

  get '/my-series' => 'static_pages#my_series'

  resources :series
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }
end
