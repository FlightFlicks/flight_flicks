class GenresController < ApplicationController
  def index
    render json: Genre.new(params[:genre])
    # render json: genre.get_id
  end
end
