class GpsTrackingChannel < ApplicationCable::Channel
  def subscribed
    stream_from "gps_#{params[:batch_id]}"
  end
end
