Rails.application.routes.draw do
  get 'static_pages/home'

  root 'static_pages#home'

  get '/:page' => 'series#index'

  resources :series
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }
end
