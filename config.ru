# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

Rails.application.config.relative_url_root = '/boras-invoice-backend'
 
map Rails.application.config.relative_url_root || "/" do
    run Rails.application
end

