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

  it 'returns error if email address already exist for a user' do
    user = User.create(email: 'test@rspec.com', password: 'password', password_confirmation: 'password')

    body = {
      'email': 'test@rspec.com',
      'password': 'strongpassword',
      'password_confirmation': 'strongpassword'
    }

    post '/api/v1/users', params: body

    expect(response).to_not be_successful
    expect(response.status).to eq 400

    error = JSON.parse(response.body, symbolize_names: true)

    expect( error[:error]).to eq('Email already in use')
  end

  it 'returns an error if passwords do not match' do
    body = {
      'email': 'test@rspec',
      'password': 'strongerpassword',
      'password_confirmation': 'strongestpassword'
    }

    post '/api/v1/users', params: body

    expect(response).to_not be_successful
    expect(response.status).to eq 400

    error = JSON.parse(response.body, symbolize_names: true)

    expect(error[:error]).to eq('Passwords do not match')
  end

  it 'returns error if field is missing' do
    body = {
      'email': 'test@rspec.com',
      'password': 'password'
    }

    post '/api/v1/users', params: body

    expect(response).to_not be_successful
    expect(response.status).to eq 400

    error = JSON.parse(response.body, symbolize_names: true)

    expect(error[:error]).to eq('Cannot leave field blank')
  end
end

