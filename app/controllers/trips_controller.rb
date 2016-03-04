class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show

  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to trips_path
    else 
      render :new
    end 
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
  end

  private

  def trip_params 
    params.require(:trip).permit(:name, :start_date, :end_date)
  end


end
