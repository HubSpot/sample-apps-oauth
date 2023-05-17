require 'hubspot/client'

module Services
  module Authorization
    module Tokens
      class Refresh < Tokens::Base
        def initialize(tokens:, request:)
          @tokens = tokens.to_hash
          @request = request
        end

        def call
          @tokens = refresh_tokens if Time.current > @tokens[:expires_in]
          @tokens
        end

        private

        def refresh_tokens
          default_api = ::Hubspot::Client.new(api_key: ENV['HUBSPOT_CLIENT_SECRET'])
          tokens = default_api.o_auth.tokens_api.create(
            grant_type: "refresh_token",
            refresh_token: @tokens[:refresh_token],
            redirect_uri: redirect_uri,
            client_id: ENV['HUBSPOT_CLIENT_ID'],
            client_secret: ENV['HUBSPOT_CLIENT_SECRET'],
            return_type: 'Object'
          )
          hashed_tokens = tokens.to_hash
          hashed_tokens[:expires_at] = expires_at(hashed_tokens[:expires_in])
          hashed_tokens
        end
      end
    end
  end
end
