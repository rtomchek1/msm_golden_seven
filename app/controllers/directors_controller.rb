class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show_details
    @director = Director.find(params[:id])
  end
end