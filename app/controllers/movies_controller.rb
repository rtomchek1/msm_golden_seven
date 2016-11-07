class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def show_details
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update_movie
    @movie = Movie.find(params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.save

    render("show_details")
  end

  def delete_movie
    @movie = Movie.find(params[:id]).destroy

    @movie = Movie.all
    render("index")
  end

  def add_new
  end

  def add_row
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.save

    render("show_details")
  end
end
