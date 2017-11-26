Rails.application.routes.draw do
  root 'series#index'

  get '/:page' => 'series#index'

  resources :series
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }
end
