Rails.application.routes.draw do
  devise_for :users
  root to: 'application#home'
  resources :movies
  get '/promotions', to: 'promotions#cargar_promociones'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
