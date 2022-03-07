class Api::V1::ForecastController < ApplicationController
  # def index
  #   if params[:location]
  #     location = MapQuestFacade.get_location(params[:location])
  #     forecast = OpenWeatherFacade.get_weather(location.latitude, location.longitude)
  #     render json: ForecastSerializer.new(forecast)
  #   else
  #     render json: { error: 'bad request' }, status: :bad_request
  #   end
  # end

  def index
    data = ForecastFacade.weather(forcast_params)
    render json: ForecastSerializer.weather(data)
  end

  private

  def forcast_params
    params.permit(:location, :units)
  end
end