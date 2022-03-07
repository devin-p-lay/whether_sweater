class LibraryService
  class << self
    def get_books(query, quantity)
      parse_json(conn.get('/search.json', { q: query, limit: quantity }))
    end

    private

    def conn
      Faraday.new('http://openlibrary.org')
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end