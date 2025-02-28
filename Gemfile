source "https://rubygems.org"

ruby "3.1.2"

gem "rails", "~> 7.1.5", ">= 7.1.5.1"
gem "sprockets-rails"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mswin mswin64 mingw x64_mingw ]
gem "bootsnap", require: false

group :development, :test do
  gem "sqlite3", ">= 1.4"
  gem "debug", platforms: %i[ mri mswin mswin64 mingw x64_mingw ]
  gem "web-console"
  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
  gem "capybara"
  gem "selenium-webdriver"
end

group :production do
  gem "pg"
end
