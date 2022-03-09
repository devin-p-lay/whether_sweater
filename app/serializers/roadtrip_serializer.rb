class RoadtripSerializer
  def self.new(origin, destination, trip_duration, arrival_weather)
    {
      "data": {
        "id": nil,
        "type": "roadtrip",
        "attributes": {
          "start_city": origin,
          "end_city": destination,
          "travel_time": trip_duration,
          "weather_at_eta": {
            "temperature": arrival_weather.temperature,
            "conditions": arrival_weather.conditions
          }
        }
      }
    }
  end

  def self.no_route(origin, destination)
    {
      "data": {
        "id": nil,
        "type": "roadtrip",
        "attributes": {
          "start_city": origin,
          "end_city": destination,
          "travel_time": "Impossible Route"
        }
      }
    }
  end
end