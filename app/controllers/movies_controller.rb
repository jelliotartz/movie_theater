class MoviesController < ApplicationController
  def index
    @movies = Movie.order(:title).all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new
    @movie.title = params[:movie][:title]
    @movie.save!
    redirect_to movie_path(@movie)
  end
end
