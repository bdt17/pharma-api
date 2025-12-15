Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :batches
      resources :shipments
    end
  end
  # ... rest of your existing routes
end
root "dashboard#index"
