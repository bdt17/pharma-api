Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "batches/index"
      get "batches/show"
      get "batches/create"
      get "batches/update"
      get "batches/destroy"
      resources :shipments  # ← existing
      resources :batches    # ← ADD THIS
    end
  end
  # ... rest of routes
end
