require 'rails_helper'

describe 'user endpoint' do
  it 'creates a user' do
    body = {
      'email': 'test@rspec.com',
      'password': 'password',
      'password_confirmation': 'password'
    }

    post '/api/v1/users', params: body

    expect(response).to be_successful
    expect(response.status).to eq 201

    user = JSON.parse(response.body, symbolize_names: true)

    expect(user).to have_key(:data)
    expect(user[:data]).to be_a Hash
    expect(user[:data][:type]).to eq('users')
  end
end 

