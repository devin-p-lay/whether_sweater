require 'rails_helper'

describe Activity do
  it 'exists and has attributes' do
    data = {
              :activity=>"Sit in the dark and listen to your favorite music with no distractions",
              :type=>'relaxation',
              :participants=>1,
              :price=>0.0,
              :link=>"",
              :key=>"9908721",
              :accessibility=>1
            }

    activity = Activity.new(data)

    expect(activity).to be_an Activity
    expect(activity.title).to eq(data[:activity])
    expect(activity.type).to eq(data[:type])
    expect(activity.participants).to eq(data[:participants])
    expect(activity.price).to eq(data[:price])
  end 
end