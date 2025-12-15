require_relative "boot"

require "rails"
# Skip ActiveRecord entirely for pure API
Bundler.require(*Rails.groups)

module PharmaApi
  class Application < Rails::Application
    config.api_only = true
    config.active_record.encryption.enabled = false
    # Skip model loading
    config.eager_load_paths.delete_if { |path| path.to_s.include?("app/models") }
  end
end
