Rails.application.routes.draw do
  get "up" => "rails/health#show"
  
  namespace :api do
    resources :shipments, only: [:index]
  end
end
