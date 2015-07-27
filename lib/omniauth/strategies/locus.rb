require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Locus < OmniAuth::Strategies::OAuth2

      option :name, 'locus'

      option :client_options, {
        :site => 'https://api.locusenergy.com/v3',
        :token_url => 'https://api.locusenergy.com/oauth/token'
      }
    end
  end
end

OmniAuth.config.add_camelization 'locus', 'Locus'
