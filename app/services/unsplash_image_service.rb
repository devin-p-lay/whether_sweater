class UnsplashImageService
  def self.image_data(search)
    get_data("/search/photos?query=#{search}&page=1&per_page=1&client_id=#{ENV['image_key']}")
  end

  private

  def self.conn
    Faraday.new(url: 'https://api.unsplash.com/')
  end

  def self.get_data(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end