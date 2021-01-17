app = Rails.respond_to?(:application) ? Rails.application : Dummy::Application

app.configure do
  config.cache_classes = true
  config.whiny_nils = true if Rails::VERSION::MAJOR == 3

  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_controller.allow_forgery_protection    = false

  config.active_support.deprecation = :stderr

  config.active_support.test_order = :sorted
end
