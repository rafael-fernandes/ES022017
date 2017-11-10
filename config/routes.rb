Rails.application.routes.draw do
  root 'series#index'

  get '/:page' => 'series#index'

  resources :series
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations"
  }

  get '/add_list/:serie_id' => 'series_acompanhadas#add_to_list', as: :add_list_serie
  get '/delete_list/:serie_id' => 'series_acompanhadas#remove_from_list', as: :delete_list_serie
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
