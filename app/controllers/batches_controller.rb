class BatchesController < ActionController::API
  def index
    render json: [
      {"id":1,"lot_number":"LOT123","temperature":2.5,"status":"Green","expiry_date":"2025-12-31"},
      {"id":2,"lot_number":"LOT456","temperature":6.1,"status":"Alert","expiry_date":"2025-12-20"}
    ]
  end
end
