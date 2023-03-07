module Services
  module Hubspot
    module Contacts
      class Search
        def initialize(access_token, email:)
          @access_token = access_token
          @email = email
        end

        def call
          basic_api = ::Hubspot::Client.new(access_token: @access_token)
          results = basic_api.crm.contacts.search_api.do_search(body: search_request).results
          results = add_fullnames(results)
          results
        end

        private

        def search_request
            {
              filterGroups:
                [
                  {
                    "filters":
                      [
                        {
                          propertyName: 'email',
                          operator: 'EQ',
                          value: @email
                        }
                     ]
                  }
               ]
            }
        end

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
