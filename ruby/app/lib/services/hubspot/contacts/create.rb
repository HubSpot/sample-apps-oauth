module Services
  module Hubspot
    module Contacts
      class Create
        def initialize(access_token, properties)
          @access_token = access_token
          @properties = properties
        end

        def call
          basic_api = ::Hubspot::Client.new(access_token: @access_token)
          basic_api.crm.contacts.basic_api.create(contact_input)
        end

        private

        def contact_input
          @contact_input ||= { body:{ properties: @properties } }
        end
      end
    end
  end
end
