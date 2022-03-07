class UnsplashImageFacade
  class << self
    def find_image(location)
      data = UnsplashImageService.image_data(location)[:results][0]
      BackgroundImage.new(data)
    end
  end
end 