module Api
  module V1
    class BatchesController < ApplicationController
      before_action :set_batch, only: [:show, :update, :destroy]

      def index
        @batches = Batch.includes(:shipment).all
        render json: @batches
      end

      def show
        render json: @batch
      end

      def create
        @batch = Batch.new(batch_params)
        if @batch.save
          render json: @batch, status: :created
        else
          render json: @batch.errors, status: :unprocessable_entity
        end
      end

      private

      def set_batch
        @batch = Batch.find(params[:id])
      end

      def batch_params
        params.require(:batch).permit(:lot_number, :expiry, :status, :shipment_id)
      end
    end
  end
end
