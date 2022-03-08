require 'rails_helper'

describe 'bored facade' do
  it 'returns 2 activity objects in array for temp < 50' do
    response = BoredFacade.get_two_activities(20)
    expect(response).to be_an Array
    expect(response.count).to eq 2
    expect(response.first).to be_an Activity
    expect(response.first.type).to eq 'cooking'
    expect(response.last).to be_an Activity
    expect(response.last.type).to eq 'relaxation'
  end

  it 'returns 2 activity objects in array for temp 50-59' do
    expect(response).to be_an Array
    expect(response.count).to eq 2
    expect(response.first).to be_an Activity
    expect(response.first.type).to eq 'busywork'
    expect(response.last).to be_an Activity
    expect(response.last.type).to eq 'relaxation'
  end

  it 'returns 2 activity objects in array for temp >= 60' do
    expect(response).to be_an Array
    expect(response.count).to eq 2
    expect(response.first).to be_an Activity
    expect(response.first.type).to eq 'recreational'
    expect(response.last).to be_an Activity
    expect(response.last.type).to eq 'relaxation'
  end
end 