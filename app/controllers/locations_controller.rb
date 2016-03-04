class LocationsController < ApplicationController

  before_action :find_trip

  def index
    @locations = Location.all
  end

  def show
  end

  def new
    @location = Location.new
  end

  def create
    @location = @trip.locaitons.new(locaiton_params) 
  end

  def edit
  end

  def update
  end

  private 
  def find_trip
    @trip = Trip.find(params[:trip_id])
  end

  def location_params
    params.require(:location).permit(:name, :trip_id)
  end

end
