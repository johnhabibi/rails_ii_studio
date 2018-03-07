class FavoritesController < ApplicationController
  def set_movie
    @movie = Movie.find_by!(slug: params[:movie_id])
  end
end
