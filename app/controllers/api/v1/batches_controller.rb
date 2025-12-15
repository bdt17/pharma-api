module Api
  module V1
    class BatchesController < ApplicationController
      def index
        render json: [
          {
            id: 1, 
            lot_number: "LOT123", 
            expiry: "2026-01-15", 
            status: "active",
            shipment: {
              tracking_number: "SHIP001",
              current_temp: 2.5,
              driver_name: "John Doe",
              status: "in_transit"
            }
          },
          {
            id: 2, 
            lot_number: "LOT456", 
            expiry: "2025-12-22", 
            status: "warning",
            shipment: {
              tracking_number: "SHIP002",
              current_temp: 6.1,
              driver_name: "Mike Smith", 
              status: "in_transit"
            }
          }
        ]
      end
    end
  end
end
