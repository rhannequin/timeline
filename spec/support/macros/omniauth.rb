module Macros
  module Omniauth
    def mock_auth_twitter
      OmniAuth.config.add_mock :twitter, uid: '12345', email: 'mock@email.com'
    end
  end
end
