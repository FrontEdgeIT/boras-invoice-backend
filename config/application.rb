require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
Bundler.require(*Rails.groups)

module InvoiceManagementBackend
  class Application < Rails::Application
    config.load_defaults 5.2
    #config.action_mailer.default_url_options = { host: 'localhost:3000' }
    
    config.action_mailer.preview_path = "#{Rails.root}/test/mailers/previews"
    config.api_only = true    
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', 
          headers: :any, 
          methods: %i[get post put delete patch],
          expose: %w(access-token expiry token-type uid client),
          max_age: 0
      end
    end
  end
end
