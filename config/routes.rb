Rails.application.routes.draw do
  resources :games
  resources :cards
  resources :users
  get "/temp", to:"application#temp"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
