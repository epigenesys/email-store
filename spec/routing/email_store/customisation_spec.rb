require 'rails_helper'

RSpec.describe "Routing", type: :routing do
  routes { EmailStore::Engine.routes }

  specify "Emails routes should be added" do
    expect(get: "/emails" ).to route_to(controller: 'email_store/emails', action: 'index')
  end

end
