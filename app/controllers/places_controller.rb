class PlacesController < ApplicationController
  before_action :signed_in_user

  def new
  	@place = Place.new()
  end

  def create
  	@place = current_user.places.build(places_require)
  	if @place.save
      flash[:success] = "New place succefully added!"
  		redirect_to @place
  	else
  		render "new"
  	end
  end

  def show
  	@place = Place.find(params[:id])
  end

  private def places_require
      params.require(:place).permit(:place, :description, :adress, :lat, :lon)
    end
end
