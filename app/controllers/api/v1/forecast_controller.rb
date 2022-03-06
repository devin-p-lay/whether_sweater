class Api::V1::ForecastController < ApplicationController
  def index
    if params[:location]
      location = MapQuestFacade.get_location(params[:location])
      forecast = OpenWeatherFacade.get_weather(location.latitude, location.longitude)
      render json: ForecastSerializer.new(forcast), status: :ok
    else
      render json: { error: 'bad request' }, status: :bad_request
    end
  end
end 