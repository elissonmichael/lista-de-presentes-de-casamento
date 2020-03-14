source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.6.3'
gem 'rails', '~> 5.0'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'bootstrap', '~> 4.3.1'
gem 'jquery-rails', '~> 4.3.1'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'simple_form', '~> 5.0.0'

group :development, :test do
  gem 'byebug', platform: :mri
end
gem 'rails-assets-tether', '>= 1.1.0'
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
