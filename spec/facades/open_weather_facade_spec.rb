require 'rails_helper'

describe 'open weather facade' do
  it 'returns a forecast object' do
    response = OpenWeatherFacade.get_weather(39.738453, -104.984853)

    expect(response).to be_a Forecast
    expect(response.current).to be_a CurrentForecast
    expect(response.daily.first).to be_a DailyForecast
    expect(response.hourly.first).to be_a HourlyForecast
  end
end