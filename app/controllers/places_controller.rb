class PlacesController < ApplicationController
  def new
  	@place = Place.new()
  end

  def create
  	@place = Place.new(places_require)
  	if @place.save
  		redirect_to @place
  	else
  		render "new"
  	end
  end

  def show
  	@place = Place.find(params[:id])
  end

  private def places_require
      params.require(:place).permit(:place, :description, :adress)
    end
end
