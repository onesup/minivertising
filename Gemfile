source 'https://rubygems.org'
gem 'rails', '4.0.0'
gem 'sqlite3'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'mysql2'
gem 'unicorn'
gem 'paloma'
gem 'carrierwave'
# gem 'carrierwave-serializable'
gem 'devise', '~> 3.1.0'
gem 'the_role', '~> 2.1.0'
gem 'bootstrap-sass', '~> 2.3.2.2'
gem 'omniauth'
gem 'omniauth-facebook', '~> 1.4.1'
gem 'kaminari'

# for Rails 4.0
gem 'simple_form', github: 'plataformatec/simple_form', tag: 'v3.0.0.beta1'
# You'll need to include the following dependencies of Summernote
# gem 'font-awesome-rails'
# # This is the right gem to use summernote editor in Rails projects.
# gem 'summernote-rails'

group :development do
  gem "pry"
  gem 'capistrano', '~> 2.15.4'
  gem 'guard-rails'
  gem "rack-livereload", :group => :development
end

group :test do
  gem 'capybara'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem "database_cleaner"
  gem "email_spec"
end

group :test, :development do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end
