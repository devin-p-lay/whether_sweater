require 'rails_helper'

describe 'map quest facade' do
  it 'returns a map object' do
    response = MapQuestFacade.get_location("Denver, CO")

    expect(response).to be_a Location
    expect(response.latitude).to be_a Float
    expect(response.longitude).to be_a Float
  end
end 