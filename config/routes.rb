Rails.application.routes.draw do
  get "/api/v1/batches", to: "batches#index"
end
