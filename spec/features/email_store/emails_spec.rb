require 'rails_helper'

RSpec.describe "Emails", type: :feature do

  describe 'Viewing stored emails' do
    context 'When there are no emails' do
      specify 'I can see a message' do
        visit "/email_store/emails"
        expect(page).to have_content 'No emails have been intercepted yet'
      end
    end
    context 'When emails have been intercepted' do
      let!(:email) { FactoryBot.create :email }

      specify 'I can see them in a list' do
        visit "/email_store/emails"
        expect(page).to have_content email.to_address
      end

      specify 'I can see the content' do
        visit "/email_store/emails"
        within(:css, "#email_#{email.id}") { click_link 'View'  }

        expect(page).to have_content email.subject
        expect(page).to have_content email.body
      end

      specify 'I can remove the email' do
        visit "/email_store/emails"
        within(:css, "#email_#{email.id}") { click_link 'Delete'  }

        expect(page).not_to have_content email.to_address
        expect(page).to have_content 'No emails have been intercepted yet'
      end
    end

  end

  describe 'Intercepting an email' do
    specify 'It stores the emails rather than sending them' do
      expect(EmailStore::Email.count).to eq 0
      DummyMailer.send_email('test@epigenesys.org.uk', 'Hello there').deliver_now
      expect(EmailStore::Email.count).to eq 1
      stored_email = EmailStore::Email.last
      expect(stored_email.to_address).to eq "test@epigenesys.org.uk"
      expect(stored_email.from_address).to eq "from@epigenesys.org.uk"
      expect(stored_email.subject).to eq "Hello there"
      expect(stored_email.body).to include "Dummy email body"
      expect(ActionMailer::Base.deliveries.size).to eq 0
    end
  end

end
