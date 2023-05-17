require 'hubspot/client'

module Services
  module Authorization
    module Tokens
      class Generate < Tokens::Base
        def initialize(code:, request:)
          @code = code
          @request = request
        end

        def call
          default_api = ::Hubspot::Client.new(api_key: ENV['HUBSPOT_CLIENT_SECRET'])
          tokens = default_api.o_auth.tokens_api.create(
            grant_type: "authorization_code",
            code: @code,
            redirect_uri: redirect_uri,
            client_id: ENV['HUBSPOT_CLIENT_ID'],
            client_secret: ENV['HUBSPOT_CLIENT_SECRET'],
            return_type: 'Object'
          )
          tokens
        end
      end
    end
  end
end
