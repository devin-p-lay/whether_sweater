class LibraryFacade
  attr_reader :location

  def initialize(search_params)
    @location = search_params[:location]
    @quantity = search_params[:quantity]
    @book_results = LibraryService.get_books(@location, @quantity)
  end

  def map_service(location)
    MapQuestService.location_data(location)
  end

  def weather_service
    latLng = map_service(@location)
    OpenWeatherService.weather_data(latLng)
  end

  def forecast
    results = weather_service
    {
      summary: results[:current][:weather][0][:description],
      temperature: results[:current][:temp]
    }
  end

  def total_books_found
    @book_results[:numFound]
  end

  def location_books
    @book_results[:docs].map do |book|
      Book.new(book)
    end
  end
end