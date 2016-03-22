class LocationsController < ApplicationController

  before_action :find_trip

  def index
    @locations = @trip.locations.all
  end

  def show
  end

  def new
    @location = Location.new
  end

  def create
    @location = @trip.locaitons.new(locaiton_params)
    if @locaiton.save
      redirect_to trip_locations_path(@trip, @location)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @location.update(location_params)
      redirect_to trip_location_path(@trip, @location)
    else
      render :edit
    end
  end

  private 
  def find_trip
    @trip = Trip.find(params[:trip_id])
  end

  def location_params
    params.require(:location).permit(:name, :trip_id)
  end

end
