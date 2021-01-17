# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'blueprint-rails/version'

Gem::Specification.new do |s|
  s.name         = "blueprint-rails"
  s.version      = Blueprint::Rails::VERSION
  s.authors      = ["beawesomeinstead"]
  s.email        = "graf.otodrakula@gmail.com"
  s.homepage     = "http://github.com/bai/blueprint-rails"
  s.summary      = "Use Blueprint CSS framework with Rails 3"
  s.description  = "This gem provides Blueprint CSS framework for your Rails 3 application."

  s.required_rubygems_version = ">= 1.3.6"

  s.files        = `git ls-files`.split("\n")
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.rubyforge_project = '[none]'

  s.add_dependency "railties", ">= 3.0", "< 6.0"
  s.add_dependency "thor",     ">= 0.14", "< 2.0"
  s.add_development_dependency "minitest-rails"
end
