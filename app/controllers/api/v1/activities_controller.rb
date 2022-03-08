class Api::V1::ActivitiesController < ApplicationController
  def index
    if params[:destination]
      location = MapQuestFacade.get_location(params[:destination])
      current_forcast = OpenWeatherFacade.get_weather(location.latitude, location.longitude).current
      activities = BoredFacade.get_two_activities(current_forcast.temperature)
      render json: ActivitySerializer.new(params[:destination], current_forcast, activities)
    else
      render json: { error: 'bad request' }, status: :bad_request
    end 
  end
end