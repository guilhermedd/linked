Rails.application.routes.draw do
  resources :link_items
  resources :users
  get "up" => "rails/health#show", as: :rails_health_check
  root to: redirect('/users#index')
end
