module Services
  module Hubspot
    module Owners
      class GetAll
        def initialize(access_token)
          @access_token = access_token
        end
        def call
          default_api = ::Hubspot::Client.new(access_token: @access_token)
          default_api.crm.contacts.basic_api.get_page.results
        end
      end
    end
  end
end
