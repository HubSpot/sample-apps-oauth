require 'hubspot-api-client'

module Services
  module Hubspot
    module Contacts
      class GetPage
        def initialize(limit: 10, access_token:)
          @limit = limit
          @access_token = access_token
        end

        def call
          basic_api = ::Hubspot::Client.new(access_token: @access_token)
          results = basic_api.crm.contacts.basic_api.get_page(limit: @limit).results
          add_fullnames(results)
        end

        private

        def add_fullnames(contacts)
          contacts.each do |contact|
            fullname = [contact.properties['firstname'], contact.properties['lastname']].reject(&:empty?).join(' ')
            contact.properties['fullname'] = fullname
          end
        end
      end
    end
  end
end
