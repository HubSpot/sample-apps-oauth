require 'hubspot/client'

module Services
  module Authorization
    class AuthorizeHubspot
      def initialize(tokens:)
        @tokens = tokens.to_hash
      end

      def call
       ::Hubspot::Client.new(access_token: @tokens[:access_token])
      end
    end
  end
end
