ENV['RAILS_ENV'] = 'test'

ENGINE_RAILS_ROOT = File.expand_path('../..', __FILE__)
require "#{ENGINE_RAILS_ROOT}/test/dummy/config/environment.rb"

require 'minitest/spec'
require 'rails/test_help'
require 'minitest/autorun' if Rails::VERSION::MAJOR == 3


Rails.backtrace_cleaner.remove_silencers!

Dir.glob(File.expand_path('../support/**/*.rb', __FILE__)).each { |f| require f }


class DummyView < ActionView::Base
  include Blueprint::Helpers::Helper
end

def helper
  @helper ||= DummyView.new
end
