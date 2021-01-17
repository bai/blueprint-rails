app = Rails.respond_to?(:application) ? Rails.application : Dummy::Application

app.routes.draw do
  root to: 'home#index'
end
