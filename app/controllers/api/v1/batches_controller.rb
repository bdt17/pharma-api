module Api
  module V1
    class BatchesController < ApplicationController
      def index
        render json: [
          {id: 1, lot_number: "LOT123", expiry: "2026-01-15", shipment: {tracking_number: "SHIP001", current_temp: 2.5}},
          {id: 2, lot_number: "LOT456", expiry: "2025-12-22", shipment: {tracking_number: "SHIP002", current_temp: 6.1}}
        ]
      end
    end
  end
end
