class TripsController < ApplicationController
  def index
    @trips = Trip.all 
    render json: @trips
  end

  def create
    trip = Trip.create :origin => params[:origin], :destination => params[:destination]

    trip.stops.create :location => params[:origin]
    params[:stops].each do |stop| 
      trip.stops.create :location => stop
    end
    trip.stops.create :location => params[:destination]
    render :json => trip
  end

  def show
    @trip = Trip.find_by :id => params[:id]
    fresh_when(etag: @trip, last_modified: @trip.updated_at, public: true)

    render json: @trip.stops
  end

end
