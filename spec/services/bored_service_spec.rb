require 'rails_helper'

describe 'bored service' do
  it 'returns a given type of activity' do
    response = BoredService.activity_data('diy')

    expect(response).to be_a Hash
    expect(response).to have_key(:activity)
    expect(response).to have_key(:type)
    expect(response).to have_key(:participants)
    expect(response).to have_key(:price)
    expect(response).to have_key(:link)
    expect(response).to have_key(:key)
    expect(response).to have_key(:accessibility)
  end
end