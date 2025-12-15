     1	module Api
     2	  module V1
     3	    class BatchesController < ApplicationController
     4	      before_action :set_batch, only: [:show, :update, :destroy]
     5	
     6	      def index
     7	        @batches = Batch.all
     8	        render json: @batches
     9	      end
    10	
    11	      def show
    12	        render json: @batch
    13	      end
    14	
    15	      def create
    16	        @batch = Batch.new(batch_params)
    17	        if @batch.save
    18	          render json: @batch, status: :created
    19	        else
    20	          render json: @batch.errors, status: :unprocessable_entity
    21	        end
    22	      end
    23	
    24	      def update
    25	        if @batch.update(batch_params)
    26	          render json: @batch
    27	        else
    28	          render json: @batch.errors, status: :unprocessable_entity
    29	        end
    30	      end
    31	
    32	      def destroy
    33	        @batch.destroy
    34	        head :no_content
    35	      end
    36	
    37	      private
    38	
    39	      def set_batch
    40	        @batch = Batch.find(params[:id])
    41	      end
    42	
    43	      def batch_params
    44	        params.require(:batch).permit(:lot_number, :expiry, :status, :shipment_id)
    45	      end
    61	
    62	def batch_params
    63	  params.require(:batch).permit(:lot_number, :expiry, :shipment_id, :status)
    64	end
    65	
    66	    end
    67	  end
    68	end
