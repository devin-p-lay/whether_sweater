require 'rails_helper'

describe 'activity serializer' do
  it 'serializes activity and weather info into json' do
    activities = BoredFacade.get_two_activities(35)
    destination = 'austin,tx'
    forecast = OpenWeatherFacade.get_weather(30.264979, -97.746598).current
    activities_json = JSON.parse(ActivitySerializer.new(destination, forecast, activities).to_json, symbolize_names: true)

    #destination/forecast
    expect(activities_json).to be_a Hash
    expect(activities_json).to have_key(:data)
    expect(activities_json[:data]).to be_a Hash
    expect(activities_json[:data]).to have_key(:id)
    expect(activities_json[:data][:id]).to be_nil
    expect(activities_json[:data]).to have_key(:type)
    expect(activities_json[:data][:type]).to eq('activities')
    expect(activities_json[:data]).to have_key(:attributes)
    expect(activities_json[:data][:attributes]).to be_a Hash
    expect(activities_json[:data][:attributes]).to have_key(:destination)
    expect(activities_json[:data][:attributes][:destination]).to be_a String
    expect(activities_json[:data][:attributes][:destination]).to have_key(:forecast)
    expect(activities_json[:data][:attributes][:destination][:forecast]).to be_a Hash
    expect(activities_json[:data][:attributes][:destination][:forecast]).to have_key(:summary)
    expect(activities_json[:data][:attributes][:destination][:forecast][:summary]).to be_a String
    expect(activities_json[:data][:attributes][:destination][:forecast]).to have_key(:temperature)
    expect(activities_json[:data][:attributes][:destination][:forecast][:temperature]).to be_a String
    #activities
    expect(activities_json[:data][:attributes]).to have_key(:activities)
    expect(activities_json[:data][:attributes][:activities]).to be_an Array
    expect(activities_json[:data][:attributes][:activities].count).to eq 2
    expect(activities_json[:data][:attributes][:activities].first).to be_a Hash
    expect(activities_json[:data][:attributes][:activities].first).to have_key(:title)
    expect(activities_json[:data][:attributes][:activities].first[:title]).to be_a String
    expect(activities_json[:data][:attributes][:activities].first).to have_key(:type)
    expect(activities_json[:data][:attributes][:activities].first[:type]).to be_a String
    expect(activities_json[:data][:attributes][:activities].first).to have_key(:participants)
    expect(activities_json[:data][:attributes][:activities].first[:participants]).to be_an Integer
    expect(activities_json[:data][:attributes][:activities].first).to have_key(:price)
    expect(activities_json[:data][:attributes][:activities].first[:price]).to be_a Float
  end
end 



