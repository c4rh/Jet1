source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'

gem 'hamlit'
gem 'hamlit-rails'
gem 'html2haml'
gem 'devise'
gem 'cancancan'
gem 'figaro'
gem 'paperclip', '~> 5.0.0'
gem 'therubyracer'
gem 'twitter-bootstrap-rails', git:  'git://github.com/seyhunak/twitter-bootstrap-rails.git'
gem 'devise-bootstrap-views'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'bootstrap-filestyle-rails'


group :development, :test do

  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'awesome_print'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
