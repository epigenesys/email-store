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
  spec.add_development_dependency "pg", ">= 0.18"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
