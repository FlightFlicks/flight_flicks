class GenresController < ApplicationController
  def show
    g = Genre.new(params[:genre])
    id = g.get_id
    render json: {genre: params[:genre], id: id }
  end
end
