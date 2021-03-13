Rails.application.routes.draw do
  resources :attractions
  resources :media
  resources :channels
  resources :kinds, :default => {format: :json}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
