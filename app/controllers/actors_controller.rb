class ActorsController < ApplicationController
  def index
    @actor = Actor.all
  end

  def show_details
    @actor = Actor.find(params[:id])
  end

  def edit
    @actor = Actor.find(params[:id])
  end

  def update_actor
    @actor = Actor.find(params[:id])
    @actor.name = params[:name]
    @actor.dob = params[:dob]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]
    @actor.save

    render("show_details")
  end

  def delete_actor
    @actor = Actor.find(params[:id]).destroy

    @actor = Actor.all
    render("index")
  end

  def add_new
  end

  def add_row
    @actor = Actor.new
    @actor.name = params[:name]
    @actor.dob = params[:dob]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]
    @actor.save

    render("show_details")
  end
end
