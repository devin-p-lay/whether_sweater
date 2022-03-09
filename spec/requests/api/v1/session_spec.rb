require 'rails_helper'

describe 'session endpoint' do
  it 'creates a session' do
    user1 = User.create(email: 'test@rspec.com', password: 'password', password_confirmation: 'password')

    login = {
              'email': 'test@rspec.com',
              'password': 'password'
            }

    post '/api/v1/sessions', params: login

    expect(response).to be_successful
    expect(response.status).to eq 200

    user = JSON.parse(response.body, symbolize_names: true)

    expect(user).to have_key(:data)
    expect(user[:data]).to be_a Hash
    expect(user[:data][:type]).to eq('users')
  end

  it 'returns an error for bad credentials' do
    body = {
      'email': 'other@email.com',
      'password': 'password'
    }

    post '/api/v1/sessions', params: body

    expect(response).to_not be_successful
    expect(response.status).to eq 400

    error = JSON.parse(response.body, symbolize_names: true)

    expect(error[:error]).to eq("You must've entered the wrong information")
  end
end

