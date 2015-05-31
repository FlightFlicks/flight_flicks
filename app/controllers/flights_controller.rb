class FlightsController < ApplicationController
  def index
    render json: Flight.new(params[:origin], params[:destination])
  end

  def show
    @duration = Flight.new(params[:origin], params[:destination])
    @duration.duration
    #not sure if this is right...
  end


end
