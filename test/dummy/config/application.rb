require File.expand_path('../boot', __FILE__)

require 'rails'

Bundler.require(:defaults, Rails.env)

%w(action_controller action_view).each { |modul| require "#{modul}/railtie" }


require 'blueprint-rails'

module Dummy
  class Application < Rails::Application
    config.encoding = 'utf-8'
    config.eager_load = false
    config.secret_key_base = 'foo123456789012'
  end
end
