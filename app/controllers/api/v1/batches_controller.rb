module Api
  module V1
    class BatchesController < ApplicationController
      def index
        render json: [{id: 1, lot_number: "LOT123", expiry: "2026-01-15", shipment: {tracking_number: "SHIP001", current_temp: 2.5}}]
      end
    end
  end
end
ActionCable.server.broadcast("gps_#{batch.id}", {lat: 37.7749, lng: -122.4194, temp: 4.2})
