class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show_details
    @director = Director.find(params[:id])
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update_director
    @director = Director.find(params[:id])
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.dob = params[:dob]
    @director.image_url = params[:image_url]
    @director.save

    render("show_details")
  end

  def delete_director
    Director.find(params[:id]).destroy

    @directors = Director.all
    render("index")
  end

  def add_new
  end

  def add_row
    @director = Director.new
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.dob = params[:dob]
    @director.image_url = params[:image_url]
    @director.save

    render("show_details")
  end
end
