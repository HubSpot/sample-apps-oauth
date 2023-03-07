module Services
  module Hubspot
    module Contacts
      class Destroy
        def initialize(id, access_token)
          @id = id
          @access_token = access_token
        end

        def call
          basic_api = ::Hubspot::Client.new(access_token: @access_token)
          basic_api.crm.contacts.basic_api.archive(contact_id: @id)
        end
      end
    end
  end
end
