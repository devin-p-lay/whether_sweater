require 'rails_helper'

describe 'roadtrip endpoint' do
  it 'retrieves data about a roadtrip between two locations' do
    user = User.create(email: 'test@rspec.com', password: 'password', password_confirmation: 'password')
    body = {
      'origin': 'Denver,CO',
      'destination': 'Pueblo,CO',
      'api_key': user.access_token
    }

    post '/api/v1/roadtrip', params: body
    expect(response).to be_successful

    roadtrip = JSON.parse(response.body, symbolize_names: true)

    expect(roadtrip).to be_a Hash
    expect(roadtrip).to have_key(:data)
    expect(roadtrip[:data]).to have_key(:id)
    expect(roadtrip[:data]).to have_key(:type)
    expect(roadtrip[:data]).to have_key(:attributes)
  end

  it 'returns impossible travel time if no route exists' do
    user = User.create(email: 'test@rspec.com', password: 'password', password_confirmation: 'password')
    body = {
      'origin': 'Denver,CO',
      'destination': 'Rome, Italy',
      'api_key': user.access_token
    }

    post '/api/v1/roadtrip', params: body
    expect(response).to be_successful

    roadtrip = JSON.parse(response.body, symbolize_names: true)

    expect(roadtrip).to be_a Hash
    expect(roadtrip).to have_key(:data)
    expect(roadtrip[:data]).to have_key(:attributes)
    expect(roadtrip[:data][:attributes][:travel_time]).to eq('impossible route')
  end

  it 'returns an error if missing a location' do
    user = User.create(email: 'test@rspec.com', password: 'password', password_confirmation: 'password')
    body = {
      'origin': 'Denver,CO',
      'api_key': user.access_token
    }

    post '/api/v1/roadtrip', params: body
    expect(response).to_not be_successful
    expect(response.status).to eq 400
  end
end


