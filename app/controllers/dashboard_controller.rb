class DashboardController < ApplicationController
  def index
    @batches = Batch.includes(:shipment).all
  end
end
