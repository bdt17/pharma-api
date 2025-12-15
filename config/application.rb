require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module PharmaApi
  class Application < Rails::Application
    config.load_defaults 8.1
    config.api_only = true
    
    # Skip ActiveRecord encryption crash (no DB)
    config.active_record.encryption.skip_encrypting_attributes = true unless ENV["DATABASE_URL"]
    
    config.active_job.queue_adapter = :inline
  end
end
