source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.1"

gem "rails", "~> 7.0.3.1"

gem "sprockets-rails"

gem "sqlite3", "~> 1.4"

gem 'puma', '~> 5.6', '>= 5.6.5'

gem "importmap-rails"

gem "turbo-rails"

gem "stimulus-rails"

gem 'tailwindcss-rails', '~> 2.0', '>= 2.0.12'

gem "jbuilder"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem 'bootsnap', '~> 1.13', require: false

gem 'msgpack', '~> 1.5', '>= 1.5.6'

gem 'bcrypt', '~> 3.1', '>= 3.1.18'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
