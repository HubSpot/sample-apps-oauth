module Services
  module Hubspot
    module Contacts
      class GetById
        def initialize(id, access_token)
          @id = id
          @access_token = access_token
        end

        def call
          basic_api = ::Hubspot::Client.new(access_token: @access_token)
          basic_api.crm.contacts.basic_api.get_by_id(
            contact_id: @id,
            properties: %w[email firstname lastname hubspot_owner_id]
          )
        end
      end
    end
  end
end
