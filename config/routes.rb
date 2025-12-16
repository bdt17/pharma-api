Rails.application.routes.draw do
  get "/api/v1/batches" => lambda { |env|
    [200, {"Content-Type" => "application/json"}, [
      {"id":1,"lot_number":"LOT123","temperature":2.5,"status":"Green"},
      {"id":2,"lot_number":"LOT456","temperature":6.1,"status":"Alert"}
    ].to_json]
  }
end
