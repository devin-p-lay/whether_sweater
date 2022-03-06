require 'rails_helper'

describe Forecast do
  it 'exists and has attributes' do
    data = OpenWeatherService.weather_data(39.738453, -104.984853)
    forecast = Forecast.new(data)

    expect(forecst).to be_a Forecast
    expect(forecast.current).to be_a CurrentForecast
    expect(forecast.hourly.first).to be_an HourlyForecast
    expect(forecast.daily.first).to be_a DailyForecast
  end
end