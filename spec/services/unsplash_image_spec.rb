require 'rails_helper'

describe 'unsplash image service' do
  it 'returns image data for a location' do
    response = UnsplashImageService.image_data('Denver, CO')

    expect(response).to have_key(:results)
    expect(response[:results]).to be_an Array
    expect(response[:results].first).to have_key(:urls)
    expect(response[:results].first).to have_key(:user)
  end
end