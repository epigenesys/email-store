require 'rails_helper'

RSpec.describe EmailStore::DeliveryHandler do
  let(:email_message)    { double(to: ['to@epigenesys.org.uk'], from: ['from@epigenesys.org.uk'], subject: 'Important subj', body: 'Important body') }

  it "Stores the email details" do
    described_class.deliver_mail(email_message)

    stored_email = EmailStore::Email.last

    expect(EmailStore::Email.count).to eq 1
    expect(stored_email.to_address).to eq email_message.to.join(', ')
    expect(stored_email.from_address).to eq email_message.from.join(', ')
    expect(stored_email.subject).to eq email_message.subject
    expect(stored_email.body).to eq email_message.body
  end

end
