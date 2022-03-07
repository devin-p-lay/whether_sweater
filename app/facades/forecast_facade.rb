class ForecastFacade
  class << self
    def weather(info)
      OpenWeatherService.weather_data(info)
    end

    def weather_service(info)
      latLng = map_service(info)
      if info[:units]
        OpenWeatherService.weather_data(latLng, info[:units])
      else
        OpenWeatherService.weather_data(latLng)
      end
    end

    def map_service(info)
      MapQuestService.location_data(info[:location])
    end
  end
end