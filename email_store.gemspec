$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "email_store/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name          = "email_store"
  spec.version       = EmailStore::VERSION
  spec.authors       = ["Claudiu Tarta"]
  spec.email         = ["claudiu.tarta@epigenesys.org.uk"]
  spec.summary       = %q{Interceps and stores emails sent in QA and DEMO enviroment }
  spec.description   = %q{Prevents emails from being sent automatically and stores them for viewing instead}
  spec.homepage      = ""
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  unless spec.respond_to?(:metadata)
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.test_files = Dir["spec/**/*"]

  spec.add_dependency "rails", ">= 5.2.3"
  spec.add_dependency "will_paginate"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0"
  spec.add_development_dependency "rspec-rails", ">= 3.0"
  spec.add_development_dependency "generator_spec"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency 'launchy'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'chromedriver-helper'
  spec.add_development_dependency 'capybara-selenium'
  spec.add_development_dependency 'puma'
  spec.add_development_dependency 'will_paginate'
  spec.add_development_dependency 'factory_bot_rails'
  spec.add_development_dependency 'database_cleaner'
end
