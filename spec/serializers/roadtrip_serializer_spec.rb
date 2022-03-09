require 'rails_helper'

describe 'roadtrip serializer' do
  it 'serializes roadtrip info to json' do
    coordinates = MapQuestFacade.get_location('chicago, il')
    arrival_weather = OpenWeatherFacade.get_future_weather(coordinates, '14:24:27')
    roadtrip_json = JSON.parse(RoadtripSerializer.new('denver,co', 'chicago,il', '14:24:27', arrival_weather).to_json, symbolize_names: true)

    expect(roadtrip_json).to be_a Hash
    expect(roadtrip_json).to have_key(:data)
    expect(roadtrip_json[:data]).to be_a Hash
    expect(roadtrip_json[:data]).to have_key(:id)
    expect(roadtrip_json[:data][:id]).to be_nil
    expect(roadtrip_json[:data]).to have_key(:type)
    expect(roadtrip_json[:data][:type]).to eq('roadtrip')
    expect(roadtrip_json[:data]).to have_key(:attributes)
    expect(roadtrip_json[:data][:attributes]).to be_a Hash
    expect(roadtrip_json[:data][:attributes]).to have_key(:start_city)
    expect(roadtrip_json[:data][:attributes]).to have_key(:end_city)
    expect(roadtrip_json[:data][:attributes]).to have_key(:travel_time)
    expect(roadtrip_json[:data][:attributes]).to have_key(:weather_at_eta)
    expect(roadtrip_json[:data][:attributes][:weather_at_eta]).to be_a Hash
    expect(roadtrip_json[:data][:attributes][:weather_at_eta]).to have_key(:temperature)
    expect(roadtrip_json[:data][:attributes][:weather_at_eta]).to have_key(:conditions)
  end

  it 'serializes roadtrip with impossible route' do
    roadtrip_json = JSON.parse(RoadtripSerializer.no_route('denver,co', 'honolulu,hi').to_json, symbolize_names: true)

    expect(roadtrip_json).to be_a Hash
    expect(roadtrip_json).to have_key(:data)
    expect(roadtrip_json[:data]).to be_a Hash
    expect(roadtrip_json[:data]).to have_key(:id)
    expect(roadtrip_json[:data][:id]).to be_nil
    expect(roadtrip_json[:data]).to have_key(:type)
    expect(roadtrip_json[:data][:type]).to eq('roadtrip')
    expect(roadtrip_json[:data]).to have_key(:attributes)
    expect(roadtrip_json[:data][:attributes]).to be_a Hash
    expect(roadtrip_json[:data][:attributes]).to have_key(:start_city)
    expect(roadtrip_json[:data][:attributes]).to have_key(:end_city)
    expect(roadtrip_json[:data][:attributes]).to have_key(:travel_time)
    expect(roadtrip_json[:data][:attributes][:travel_time]).to eq('Impossible Route')
    expect(roadtrip_json[:data][:attributes]).to_not have_key(:weather_at_eta)
  end
end

