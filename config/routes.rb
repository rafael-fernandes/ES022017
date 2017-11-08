Rails.application.routes.draw do
  root 'series#index'

  resources :series
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }

  get '/current_list/' => 'lists#show', as: :current_list
  get '/add_to_list/:serie_id' => 'lists#add_to_list', as: :add_to_list
  get '/remove_from_list/:serie_id' => 'lists#remove_from_list', as: :remove_from_list
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
