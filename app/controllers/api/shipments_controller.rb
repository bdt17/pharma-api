module Api
  class ShipmentsController < ApplicationController
    def index
      render json: [
        {id: 1, lat: 37.7749, lng: -122.4194, temp: 36.5, status: "active"},
        {id: 2, lat: 34.0522, lng: -118.2437, temp: 35.8, status: "delivered"}
      ], status: :ok
    end
  end
end
