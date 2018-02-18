# -*- encoding: utf-8 -*-
# stub: devise-bootstrapped 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "devise-bootstrapped".freeze
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andrew Fomera".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-02-18"
  s.description = " This gem generates nicer default views styled with Bootstrap so you have a bit of a better starting point for your app. ".freeze
  s.email = ["andrew@zerlex.net".freeze]
  s.files = [".gitignore".freeze, ".rspec".freeze, ".travis.yml".freeze, "CODE_OF_CONDUCT.md".freeze, "Gemfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "app/views/devise/confirmations/new.html.erb".freeze, "app/views/devise/mailer/confirmation_instructions.html.erb".freeze, "app/views/devise/mailer/password_change.html.erb".freeze, "app/views/devise/mailer/reset_password_instructions.html.erb".freeze, "app/views/devise/mailer/unlock_instructions.html.erb".freeze, "app/views/devise/passwords/edit.html.erb".freeze, "app/views/devise/passwords/new.html.erb".freeze, "app/views/devise/registrations/edit.html.erb".freeze, "app/views/devise/registrations/new.html.erb".freeze, "app/views/devise/sessions/new.html.erb".freeze, "app/views/devise/shared/_links.html.erb".freeze, "app/views/devise/unlocks/new.html.erb".freeze, "bin/console".freeze, "bin/setup".freeze, "devise-bootstrapped.gemspec".freeze, "lib/devise/bootstrapped.rb".freeze, "lib/devise/bootstrapped/version.rb".freeze, "lib/devise/generators/bootstrapped_generator.rb".freeze]
  s.homepage = "https://github.com/king601/devise-bootstrapped".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.3".freeze
  s.summary = "Generates nicer views for Devise that use Bootstrap".freeze

  s.installed_by_version = "2.7.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
