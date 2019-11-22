require 'rails_helper'

RSpec.describe EmailStore::DeliveryInterceptor do
  let(:base_handler)  { double }
  let(:email_message) { double(delivery_handler: base_handler) }

  it "Changes the delivery handler of the email message" do
    expect(email_message).to receive(:delivery_handler=).with(EmailStore::DeliveryHandler).and_return(true)
    described_class.delivering_email(email_message)
  end

end
