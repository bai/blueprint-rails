require 'action_controller'
require 'action_view'

module Blueprint
  module Rails
    if ::Rails.version < "3.1"
      require 'blueprint-rails/railtie'
    else
      require 'blueprint-rails/engine'
    end
  end
  
  module Helpers
    autoload :Helper, 'blueprint-rails/helpers/helper'
  end
  ActionController::Base.helper(Blueprint::Helpers::Helper)
end
