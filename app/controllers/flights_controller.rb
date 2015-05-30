class FlightsController < ApplicationController
  def index
    render json: Flight.new(params[:origin], params[:destination])
  end

  # def show
  #   render json: Flights.find_by_id(params[:id])
  # end

  
end
