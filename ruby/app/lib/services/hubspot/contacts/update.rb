module Services
  module Hubspot
    module Contacts
      class Update
        def initialize(access_token, id, properties)
          @access_token = access_token
          @id = id
          @properties = properties
        end

        def call
          default_api = ::Hubspot::Client.new(access_token: @access_token)
          default_api.crm.contacts.basic_api.update(contact_id: @id, body: contact_input)
        end

        private

        def contact_input
          @contact_input ||= { properties: @properties }
        end
      end
    end
  end
end
