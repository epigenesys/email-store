FactoryBot.define do
  factory :email, class: "EmailStore::Email" do
    to_address   { "test@epigenesys.org.uk" }
    from_address { "receive@epigenesys.org.uk" }
    subject      { "Important email" }
    body         { "Big news" }
  end
end
