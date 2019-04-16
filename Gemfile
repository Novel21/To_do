source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap', '~> 4.3'
gem 'coffee-rails', '~> 4.2'
gem 'devise', '~> 4.6', '>= 4.6.1'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.2.2'
gem 'rubocop', '~> 0.67.2'
gem 'rubocop-performance'
gem 'sass-rails', '~> 5.0'
gem 'sqlite3', '~> 1.3.6'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
group :development, :test do
  gem 'byebug', platform: :mri
end
group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
