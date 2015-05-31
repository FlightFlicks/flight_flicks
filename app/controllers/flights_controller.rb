class FlightsController < ApplicationController
  def index
    render json: Flight.new(params[:origin], params[:destination])
  end

  def show
    f = Flight.new(params[:origin], params[:destination])
    render json: {:origin => params[:origin], :destination => params[:destination], :flight_time => f.duration}
    #not sure if this is right...
  end


end
