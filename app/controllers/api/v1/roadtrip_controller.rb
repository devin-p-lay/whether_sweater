class Api::V1::RoadtripController < ApplicationController
  before_action :require_valid_key
  before_action :require_origin_and_destination

  def create
    if roadtrip_time
      coordinates = MapQuestFacade.get_location(destination)
      arrival_weather = OpenWeatherFacade.get_future_weather(coordinates, roadtrip_time)
      render json: RoadtripSerializer.new(origin, destination, roadtrip_time, arrival_weather), status: 200
    else
      render json: RoadtripSerializer.no_route(origin, destination), status: 200
    end
  end

  private

  def require_valid_key
    render json: { error: 'Unauthorized Request' }, status: 401 unless valid_key
  end

  def valid_key
    User.find_by(access_token: params[:api_key])
  end

  def require_origin_and_destination
    render json: { error: 'Incomplete Request' }, status: :bad_request unless origin && destination
  end

  def origin
    params[:origin]
  end

  def destination
    params[:destination]
  end

  def roadtrip_time
    roadtrip_time = MapQuestFacade.get_route(origin, destination)
  end
end
