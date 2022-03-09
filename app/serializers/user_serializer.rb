class UserSerializer
  class << self
    def new(user)
      {
        'data': {
          'type': 'users',
          'id': user.id.to_s,
          'attributes': {
            'email': user.email,
            'api_key': user.set_access_token
          }
        }
      }
    end
  end
end