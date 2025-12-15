require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module PharmaApi
  class Application < Rails::Application
    config.load_defaults 8.1
    config.api_only = true
    
    # Disable generators
    config.generators.system_tests = nil
    
    config.time_zone = 'Mountain Time (US & Canada)'
    config.active_record.default_timezone = :local
  end
end
