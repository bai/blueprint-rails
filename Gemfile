source 'https://rubygems.org/'

rails_version = ENV["RAILS_VERSION"] || "default"

rails = case rails_version
        when 'master'
          {github: 'rails/rails'}
        when 'default'
          '~> 5.1.0'
        else
          "~> #{rails_version}"
        end

gemspec

group :test do
  gem 'minitest', '<= 5.10.1'
  gem 'test-unit', '~> 3.0' if rails_version.match(/^3\.2/)
  gem 'rails', rails
end
