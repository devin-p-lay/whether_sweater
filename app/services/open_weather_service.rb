class OpenWeatherService
  class << self
    # def weather_data(lat, lon)
    #   response = conn.get("/data/2.5/onecall") do |req|
    #     req.params['lat'] = lat
    #     req.params['lon'] = lon
    #     req.params['units'] = 'imperial'
    #     req.params['exclude'] = 'minutely'
    #   end
    #   parse_json(response)
    # end
    #
    # private
    #
    # def conn
    #   Faraday.new("https://api.openweathermap.org", params: { appid: ENV['weather_key'] })
    # end
    #
    # def parse_json(response)
    #   JSON.parse(response.body, symbolize_names: true)
    # end


    def weather_data(latLng, units = 'imperial')
      parse(Faraday.get('https://api.openweathermap.org/data/2.5/onecall', {lat: latLng[:lat], lon: latLng[:lng], units: units, appid: ENV['weather_key'], exclude: 'minutely,alerts'}))
    end

    def parse(response)
      JSON.parse(response.body, symbolize_names: true)
    end 
  end
end