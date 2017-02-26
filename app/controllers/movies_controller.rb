class MoviesController < ApplicationController
  def index
    @movies = Movie.all
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
    # @movie.showtimes.time = params[:movie][:showtime]
    # @movie.auditorium = params[:movie][:auditorium]
    @movie.save
    redirect_to movie_path(@movie)
  end
end
