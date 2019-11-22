# EmailStore

Intercepts emails and stores them for viewing in the browser

## Installation

Add this line to your application's Gemfile:

```ruby
gem "email_store", git: "git@git.epigenesys.org.uk:epigenesys/email-store.git"
```

And then execute:

    $ bundle

To restrict unauthorised access to the stored emails please mount the engine in:

    config/routes.rb

appropriately using your specific restrictions:
```ruby
authenticated :user, ->(user) { user.staff? } do
  mount EmailStore::Engine, at: "/email_store"
end
```

Register the email interceptor as required for your desired environments in:

    config/initializers

like so:
```ruby
if Rails.env.qa? || Rails.env.demo?
  ActionMailer::Base.register_interceptor(EmailStore::DeliveryInterceptor)
end
```

Run the install command to copy the migrations over to your app:

    rails email_store:install:migrations

Run the migrations:

    rails db:migrate SCOPE=email_store

## Usage

Emails sent in QA and DEMO environment will be automatically intercepted and stored to be previewed at:

    /email_store/emails

## Warning

Performing deliveries with

    deliver!

will bypass the email interception and cause the email to be delivered!

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
