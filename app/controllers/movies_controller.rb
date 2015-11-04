class MoviesController < ApplicationController
  
  def index
    @movies = Movie.all.order(:id)
  end

  def show

  end

  def new
    @movie = Movie.new
  end

  def create
    movie = Movie.create(movie_params)
    redirect_to(movie_path(movie.id))
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    redirect_to(movies_path)
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    movie = Movie.find(params[:id])
    movie.update(movie_params)
    redirect_to(movie_path(movie.id))
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :genre, :year, :length, :director, :poster, :format)
  end

end