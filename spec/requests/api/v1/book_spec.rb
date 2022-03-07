require 'rails_helper'

describe 'book requests' do
  it 'returns a JSON with weather and books' do
    get '/api/v1/book-search?location=denver,co&quantity=5'

    expect(response).to be_successful

    hash = JSON.parse(response.body, symbolize_names: true)
    data = hash[:data]
    attributes = data[:attributes]

    expect(data[:id]).to eq nil
    expect(data[:type]).to eq 'books'
    expect(attributes[:destination]).to be_a String
    expect(attributes[:forecast][:summary]).to be_a String
    expect(attributes[:forecast][:temperature]).to be_a Float
    expect(attributes[:total_books_found]).to be_an Integer
    expect(attributes[:books].size).to eq 5
  end
end