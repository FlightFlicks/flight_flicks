class FlightsController < ApplicationController
  def index
    f = Flight.new(params[:origin], params[:destination])
    render json: f.duration
  end

  # def show
  #   render json: Flights.find_by_id(params[:id])
  # end
end
