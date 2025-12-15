class HardwareGatewayJob < ApplicationJob
  queue_as :default

  def perform
    client = MQTT::Client.connect('mqtt://broker.emqx.io')
    client.subscribe('pharma/gps/+/telemetry')

    client.get do |topic, message|
      data = JSON.parse(message)
      shipment = Shipment.find_or_initialize_by(device_id: data["imei"])
      shipment.update!(
        lat: data["lat"],
        lng: data["lng"],
        temp_celsius: data["temp"],
        status: data["status"] || "in_transit"
      )
    end
  end
end
