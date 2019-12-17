source 'https://rubygems.org'

gem 'berkshelf'
gem 'chef'
gem 'guard'
gem 'rake'

group :development do
  gem 'foodcritic'
  gem 'guard-rubocop'
  gem 'rubocop'
  gem 'coveralls', require: false
end

group :integration do
  gem 'busser-serverspec'
  gem 'guard-kitchen'
  gem 'test-kitchen'
end

group :docker do
  gem 'kitchen-docker'
end
