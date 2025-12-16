require 'rack'

app = Rack::Builder.new do
  use Rack::ContentLength
  run lambda { |env|
    case env["PATH_INFO"]
    when "/batches"
      [200, 
       {"Content-Type" => "application/json"},
       ['[{"id":1,"lot_number":"LOT123","temperature":2.5,"status":"Green"},{"id":2,"lot_number":"LOT456","temperature":6.1,"status":"Alert"}]']
      ]
    else
      [404, {"Content-Type" => "text/plain"}, ["Not Found"]]
    end
  }
end

run app
