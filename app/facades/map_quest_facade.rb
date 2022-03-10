class MapQuestFacade
  class << self
    def get_location(location)
      data = MapQuestService.location_data(location)
      result = data[:results].first[:locations].first[:latLng]
      Location.new(result)
    end

    def get_route(from, to)
      data = MapQuestService.get_route(from, to)
      data[:route][:formattedTime]
    end
  end
end